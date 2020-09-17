class BooksController < ApplicationController
  layout 'books'

  def index
    @books = Book.order(:price)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book '#{@book.title}' added successfully."
      redirect_to(books_path)
    else
      flash[:error] = "Book was not added successfully."
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:notice] = "Book '#{@book.title}' updated successfully."
      redirect_to(books_path)
    else
      flash[:error] = "Book was not updated successfully."
      render('edit')
    end
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book '#{@book.title}' destroyed successfully."
    redirect_to(books_path)
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :price, :publish_date)
  end
end
