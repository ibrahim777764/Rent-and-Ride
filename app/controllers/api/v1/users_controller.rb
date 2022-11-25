class Api::V1::UsersController < ApiController
before_action :authorize_request, except: [:create]
  def index
      users = User.all
      render json: {
          users: users
      }
  end
end