class API::AppsController < ApplicationController
  respond_to :json

  def create
    app = App.new(token: params[:token], name: params[:app_name])
    if app.save
      render json: app, status: :created
    else
      render json: "Could not create an app", status: :unprocessable_entity
    end
  end

  def show
    app = App.find_by(token: params[:token])
    respond_with app, status: :ok
  end

  def destroy
    app = App.find_by(token: params[:token]).destroy
    respond_with app, status: :ok
  end
end
