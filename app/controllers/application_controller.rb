class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authorize_request, except: %i[home login]

  def home
    render json: { message: 'Server is up and running!' }
  end
end
