class BooksController < ApplicationController
  def index
    @user_info = Book.new
    @user_info.user_id = current_user.id
    @books = Book.all
  end

  def show
    @user_info = Book.new
    @user_info.user_id = current_user.id
    @book = Book.find(params[:id])
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def update
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
