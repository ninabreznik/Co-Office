class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  # def show
  #   @user = User.find(params[:id])
  # end

  def create
    @user = User.new(user_params)
    # if @user.save
    #   flash[:success] = "Welcome to the Sample App!"
    #   redirect_to @user
    # else
    #   render 'new'
    # end
  end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   if @user.update_attributes(user_params)
  #     flash[:success] = "Profile updated"
  #     redirect_to @user
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   User.find(params[:id]).destroy
  #   flash[:success] = "User deleted."
  #   redirect_to users_url
  # end
end
