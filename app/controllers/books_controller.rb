class BooksController < ApplicationController
    before_action :find_book, only: [:edit, :update, :show, ]
  
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    
  end

  def edit
    
  end

  def update
    if @book.update(books_params)
      redirect_to book_path(@book.id)
    else
      render :edit
  end

  def show
    
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

private

  def books_params
  params.require(:book).permit(:title, :author, :genre, :number_of_pages, :difficulty_level, :stat_bonus)  
  end

  def find_book
    @book = Book.find(params[:id])
  end

end
