class BooksController < ActionController::Base

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path
    else
      redirect_to :back
      flash[:notice] = "You did not submit everything that needs to be submitted!"
    end

  end

  def show

    @book = Book.find(params[:id])
  end


  private

  def book_params
    params.require(:book).permit(:title, :author, :isbn, :description, :genre)
  end

end
