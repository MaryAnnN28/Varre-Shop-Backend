class Item < ApplicationRecord
  has_many :cart_items
  has_many :carts, through: :cart_items
  has_many :reviews

  serialize :item, Array 
  
end
