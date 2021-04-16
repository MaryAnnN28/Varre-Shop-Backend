class UserSerializer < ActiveModel::UserSerializer
  attributes :id, :first_name, :last_name, :email, :cart_id, :item_id

end
