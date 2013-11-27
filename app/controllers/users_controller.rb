class UsersController < ApplicationController

  def new
    @user = User.new(params[:user])
  end
 
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Pinboard!"
      redirect_to @user
    else 
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    # respond_to do |f|
    #   f.html
    #   f.json do 
    #     render json: {name: @user.name}
    #   end
    # end
  end

  def update
    if @user.update_attributes(params[:user])
      sign_in @user
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
end

