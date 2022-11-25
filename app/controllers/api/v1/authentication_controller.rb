module Api
  module V1
     class Api::V1::AuthenticationController < ApiController
      rescue_from ActionController::ParameterMissing, with: :parameter_missing
          before_action :authorize_request, except: [:login]
     def login
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
          payload =user.id
          token = AuthenticationTokenService.encode(payload)
          render json: {
              user: user,
              jwt: token,
              current_user: true
          }, status: :created
      else
          render json: {
              error: 'Invalid Username or Password'
          }
      end
  end

def parameter_missing(e)
  render json: { error: e.message }, status: :unprocessable_entity
end
end
end
end