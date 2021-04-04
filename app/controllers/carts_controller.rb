class CartsController < ApplicationController
  # skip_before_action :authorized, only: [:index, :destroy]

  def index
    render json: Cart.all.to_json(cart_serializer_options)
  end

  def show 
    cart = Cart.new(cart_serializer_options)
    cart.save
    render json: cart.to_json()
  end

  def update 
    cart = Cart.find(params[:id])
    cart.update(cart_serializer_options)
    render json: cart.to_json()
  end

  def destroy
    cart = Cart.find(params[:id])
    cart.destroy
  end

  private

  def cart_serializer_options()
    {
      except: [:created_at, :updated_at]
    }
  end

  def cart_params
    params.require(:cart).permit!
  end


end
