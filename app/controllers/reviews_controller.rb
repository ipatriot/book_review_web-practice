class ReviewsController < ActionController::Base

  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
    # binding.pry
  end

  def create
    @review = Review.new(review_params)
    @book = Book.find(params[:book_id])
    @review.book = @book

    if @review.save
      redirect_to book_path(@book)
      # flash[:notice] = "Success you submitted a Review, better be a positive one fella!"
    else
      redirect_to :back
      flash[:notice] = "Please submit a review that contains ratings from 1 to 5 or a description"
    end
  end

  protected

  def review_params
    params.require(:review).permit(:rating, :body, :book_id)
  end
end
