class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant# Associate review with the restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review added successfully!'
    else
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
