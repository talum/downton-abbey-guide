require "application_responder"

class ApplicationController < ActionController::API
  self.responder = ApplicationResponder
  respond_to :json

  include ActionController::Serialization
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ActionController::MimeResponds
  # protect_from_forgery_with :null_session

  private 
  def authenticate_user_from_token!
    authenticated = authenticate_with_http_token do |token, options|
      binding.pry
      user_email = options[:user_email].presence
      user = user_email && User.find_by_email(user_email)

      if user && Devise.secure_compare(user.authentication_token, token)
        sign_in user, store: false
      else
        render json: {errors: ['Invalid authorization.']}, status: :unauthorized
      end
    end
  end

end
