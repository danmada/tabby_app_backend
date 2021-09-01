class Tab < ApplicationRecord
  belongs_to :customer, dependent: :destroy
  belongs_to :bar, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :drinks, through: :orders
end
