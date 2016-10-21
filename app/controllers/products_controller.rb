class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Post.new
  end

  def show
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def update
    if @product.update(product_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def find_post
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:@product).permit(:name, :category_id, :description, :product_model, :maker_name, :product_serial, :quentity, :stock_location, :unit_value, :unit_size, :image, :approved)
  end
end

