class BooksController < ApplicationController
    before_action :find_book, only: [:edit, :update, :show, :destroy]
  
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @book.update(books_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
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
