class ReviewsController < ApplicationController
  def index
      @reviews = Review.all
    end

    def new
      @review = Review.new
    end

    def edit
      @review = Review.find(params[:id])
    end

    def create
       @place = Place.find(params[:place_id])
       @review = @place.reviews.create(reviews_params)
       redirect_to place_path(@place)
     end

    def show
      @review = Review.find(params[:id])
    end

    def update
      @review = Review.find(params[:id])

      if @review.update(reviews_params)
        redirect_to @review
      else
        render :edit
      end
    end

    def destroy
      @place = Place.find(params[:post_id])
      @review = @place.reviews.find(params[:id])
      @review.destroy

      redirect_to place_path(place)
    end

    private
      def reviews_params
        params.require(:review).permit(:reviewer, :body, :rating)
      end
end
