class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
    )
    product.save
    Image.create(product_id: product.id, url: params[:image_url])
    render json: product
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.save
    render json: product
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Successfully destroyed product" }
  end
end
