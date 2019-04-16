class ReviewsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]

  def index
    @reviews = Review.all.page(params[:page])
  end
  
  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews.order('created_at DESC').page(params[:page])
  end
  
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      flash[:success] = '口コミを投稿しました。'
      redirect_to root_url
    else
      @reviews = current_user.reviews.order('created_at DESC').page(params[:page])
      flash.now[:danger] = '口コミの投稿に失敗しました。'
      redirect_to root_url
    end
  end

  def destroy
    @review.destroy
    flash[:success] = '口コミを削除しました。'
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:product_id, :point, :content)
  end

  def correct_user
    @review = current_user.reviews.find_by(id: params[:id])
    unless @review
      redirect_to root_url
    end
  end
end
