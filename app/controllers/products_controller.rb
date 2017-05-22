class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @new_product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

    def create
    @new_product = Product.new(product_params)
    if @new_product.save
      flash[:success] = "The product was added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

private 
def product_params
      params.require(:product).permit(:product_image, :title, :description, :price)
end
end
