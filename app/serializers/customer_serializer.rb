class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :credit_card
end
