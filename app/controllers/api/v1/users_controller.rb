class Api::V1::UsersController < ApplicationController

  def index 
    users = User.all
    render json:users
  end

  def show 
    user = User.find(params[:id])
    render json: user.to_json(user_serializer_options)
  end

  def create
    user = User.create(user_params)
    Cart.create(user_id: user.id)
    if user.valid?
      token = JWT.encode({user_id: user.id}, "varre")
      render json: {user: UserSerializer.new(user), token: token}, status: :created
    else
      render json: { message: user.errors.full_messages}, status: :not_acceptable
    end
  end

  def autologin
    user = current_user ? current_user : {message: "Please log in"}
    render json: user
  end


  def update
    user = User.find(params[:id])
    user.update(user_serializer_options)
    render json: user.to_json(user_serializer_options)
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
