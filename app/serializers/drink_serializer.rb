class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :bar_id, :drink_type, :price

  has_one :order
end
