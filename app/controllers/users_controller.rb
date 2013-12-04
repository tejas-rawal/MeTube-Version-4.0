class UsersController < ApplicationController

  def show
    name = params[:first_name]
    @user = User.find(name)
  end

  def index
    @users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	@user.save
  	redirect_to '/users'
  end

    def edit
  	@user = User.find(params[:first_name])
  end

  def update
  	@user = User.find(params[:first_name])
  	@user.update(user_params)
  	redirect_to '/users'
  end

  def destroy
  	@user = User.find(params[:first_name])
  	@user.destroy
  	redirect_to '/users'
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email_address)
  end
end