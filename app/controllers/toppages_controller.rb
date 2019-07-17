class ToppagesController < ApplicationController
  def index
    #@products = Product.all.page(params[:page])
    @products_shanpoo = Product.where(junre: 1)
    @products_tonic = Product.where(junre: 2)
  end
end
