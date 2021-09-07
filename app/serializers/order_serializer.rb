class OrderSerializer < ActiveModel::Serializer
  attributes :id, :tab_id, :drink_id

  belongs_to :drink
end
