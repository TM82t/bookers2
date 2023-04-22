class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "Book was successfully created"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render("books/index")
    end
  end

  def index
  end

  def show
  end
end
