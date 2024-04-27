class UsersController < ApplicationController

  # #GET /users
  # def index
  #   @users = User.all
  #   render json: @users
  # end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     render json: { message: "User created successfully" }, status: ok
  #   else
  #     render json: { error: "残念"}, status: 400
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:name, :email, :password_digest)
  # end
end
