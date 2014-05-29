class API::FeedbacksController < ApplicationController
  def create
    if Feedback.create(email: params[:email], message: params[:message])
      render json: 'Feedback successfully received', status: :ok
    else
      render json: 'Feedback sending failed', status: :internal_server_error
    end
  end
end
