class ProductsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  require 'date'
  def index
    @products = Product.where("approved = 'true'").all
  end

  def approval
    @approved_products = Product.all
  end

  def new
    @products = Product.all
    @product = Product.new
    @categories = Category.all
  end

  def show
  end

  def edit
    @categories = Category.all
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
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit!
  end
end

