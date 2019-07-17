class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page])
    averages(@product)
    
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews.order('created_at DESC').page(params[:page])
    averages(@product)
    
  end

  def averages(product)
    @average_review = Review.group(:product_id).average(:point)
  end
  
end
