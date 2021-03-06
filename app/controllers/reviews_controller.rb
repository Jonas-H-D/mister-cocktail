class ReviewsController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def top
    @reviews = Review.where(rating: 5)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to cocktails_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
