class API::EmailsController < ApplicationController
  respond_to :json

  def create
    app = App.find_by(token: params[:token])
    new_email = app.emails.new( from:        params[:from],
                                to:          params[:to],
                                cc:          params[:cc],
                                bcc:         params[:bcc],
                                subject:     params[:subject],
                                text_part:   params[:text_part],
                                html_part:   params[:html_part])
    if new_email.save
      save_attachments(new_email, Marshal::load(params[:attachments])) if params[:attachments]
      render json: new_email, status: :created
    else
      render json: new_email.errors, status: :unprocessable_entity
    end
  end

  def index
    app = App.includes(:emails).find_by(token: params[:token])
    emails = app.emails rescue nil
    if emails
      respond_with emails, status: :ok
    else
      render json: 'No emails found for this app', status: :not_found
    end
  end

  def show
    app = App.includes(:emails).find_by(token: params[:token])
    email = app.emails.find(params[:email_id]) rescue nil
    if email
      # Add attachments to email JSON
      email_with_attachments = JSON.parse(email.to_json)
      email_with_attachments['attachments'] = JSON.parse(email.attachments.to_json)

      respond_with email_with_attachments, status: :ok
    else
      render json: 'Email not found', status: :not_found
    end
  end

  def destroy
    app = App.includes(:emails).find_by(token: params[:token])
    email = app.emails.find(params[:email_id]) rescue nil
    if email
      email.destroy
      render json: email, status: :ok
    else
      render json: 'Email not found', status: :not_found
    end

  end

  private
    def save_attachments(new_email, attachments)
      unless attachments.nil?
        require 'fileless_io'
        attachments.each do |a|
          f = FilelessIO.new(a[:raw_source])
          f.original_filename = a[:filename]
          f.content_type = a[:content_type]
          Attachment.create!(attachment: f, email_id: new_email.id)
        end
      end
    end
end
