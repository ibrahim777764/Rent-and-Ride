class Api::V1::UsersController < ApplicationController
  skip_before_action :require_login

  def index
    users = User.all
    render json: {
      users:
    }
  end

  def create
    user = User.create(user_params)
    # byebug
    if user.valid?
      payload = { user_id: user.id }
      token = encode_token(payload)
      render json: {
        status: :created,
        user:,
        jwt: token
      }
    else
      render json: {
               status: 500,
               errors: user.errors.full_messages
             },
             status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password, :password_digest)
  end
end
