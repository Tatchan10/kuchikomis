class LikesController < ApplicationController
  before_action :require_user_logged_in

  def create
    @review = Review.find(params[:review_id])
    unless current_user.like_review?(@review)
      current_user.like(@review)
      @review.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @review = Like.find(params[:id]).review
    if current_user.like_review?(@review)
      current_user.unlike(@review)
      @review.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end
end
