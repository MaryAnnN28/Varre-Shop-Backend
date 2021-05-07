class Api::V1::UsersController < ApplicationController

  def index 
    users = User.all
    render json:users
  end

  def create
    user = User.create(user_params)
    if user.valid?
      token = JWT.encode({user_id: user.id}, "varre")
      render json: {user: UserSerializer.new(user), token: token}, status: :created
    else
      render json: {message: user.errors.full_messages}, status: :not_acceptable
    end
  end


  def autologin
    user = current_user ? current_user : {message: "Please log in"}
    render json: user
  end




  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
