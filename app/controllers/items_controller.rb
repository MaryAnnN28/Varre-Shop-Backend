class ItemsController < ApplicationController
  # skip_before_action :authorized, only: [:index, :destroy]

  def index
    render json: Item.all.to_json(item_serializer_options)
  end

  def show 
    item = Item.find(params[:id])
    render json: item.to_json(item_serializer_options)
  end

  def create
    item = Item.new(item_serializer_options)
    item.save
    render json: item.to_json()
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

  private

  def item_serializer_options()
    {
      except: [:created_at, :updated_at]
    }
  end

  def item_params 
    params.require(:item).permit!
  end


end
