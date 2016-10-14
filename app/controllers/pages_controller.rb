class PagesController < ApplicationController
  def home
  end

  def show
    @product = Product.find(params[:id])
  end
end
