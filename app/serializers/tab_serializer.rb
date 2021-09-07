class TabSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :bar_id

  belongs_to :customer, serializer: OnlyCustNameSerializer
  has_many :orders
end
