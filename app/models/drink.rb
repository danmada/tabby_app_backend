class Drink < ApplicationRecord
  belongs_to :bar, dependent: :destroy
  has_one :order
end
