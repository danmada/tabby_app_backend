class Tab < ApplicationRecord
  belongs_to :customer
  belongs_to :bar
  has_many :orders, dependent: :destroy
  has_many :drinks, through: :orders, dependent: :destroy
end
