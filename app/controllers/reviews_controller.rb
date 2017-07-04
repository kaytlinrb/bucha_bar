class ReviewsController < ApplicationController

  def new
    @kombucha= Kombucha.find(params[:kombucha_id])
    @review = Review.new
  end

  def create
    if @kombucha.reviews.create(review_params)
      redirect_to kombucha_path(@kombucha)
    else
      render :new
    end
  end


  private

    def review_params
      params.require(:review).permit(:author, :content_body, :rating)
      params.require(:kombucha).permit(:name, :cost, :origin)
    end


  end
