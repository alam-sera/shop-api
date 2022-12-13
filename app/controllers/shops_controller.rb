class ShopsController < ApplicationController
  def index
    shops = Shop.all 
    render json: shops
  end

  def show 
    num = params[:id]
    item = Shop.find(num)
    render json: item
  end

  def create
    shop = Shop.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      stock: params[:stock]
    ).save
  end

  def update
    shop = Shop.find(params[:id])
    shop.name = params[:name] || shop.name
    shop.price = params[:price] || shop.price
    shop.description = params[:description] || shop.description
    shop.stock = params[:stock] || shop.stock
    shop.save
  end

  def delete
    shop = Shop.find(params[:id])
    shop.delete
    render json: {message: "DELETION SUCCESS"}
  end
end
