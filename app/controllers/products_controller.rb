class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params.require(:product).permit(:name, :description, :inventory))
    redirect_to products_path
  end

  def show
  end

  def index
    @products = Product.all
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end
end
