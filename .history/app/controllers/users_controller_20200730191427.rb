class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  end

  def me
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confitmation)
  end
end
