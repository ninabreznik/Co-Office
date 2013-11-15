class UsersController < ApplicationController
  

  def new
    @user = User.new(params[:user])
  end
 
  def create
    @user = User.new(params[:user])
    @user.save
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
end

