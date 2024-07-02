class UsersProfileController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user), notice: "User created successfully."
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "User updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "User deleted successfully."
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
