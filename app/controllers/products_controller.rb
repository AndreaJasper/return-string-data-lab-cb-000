class ProductsController < ApplicationController

  def description
    productd = Product.find(params[:id])
    render plain: product.description
  end

  def inventory
    productd = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def index
    @products = Product.all
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end

end
