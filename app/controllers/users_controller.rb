class UsersController < ApplicationController
  def index
    @user_info = Book.new
    @user_info.user_id = current_user.id
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books.all
    @user_info = Book.new
    @user_info.user_id = @user.id
  end

  def edit
  end
end
