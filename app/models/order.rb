class Order < ApplicationRecord
  belongs_to :tab, dependent: :destroy
  belongs_to :drink, dependent: :destroy
end
