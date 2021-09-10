class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :age, :email, :credit_card
end
