class UsersController < ApplicationController
  def index
    @user_info = Book.new
    @user_info.user_id = current_user.id
    @users = User.all
  end

  def show
  end

  def edit
  end
end
