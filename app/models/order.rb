class Order < ApplicationRecord
  belongs_to :tab
  belongs_to :drink
end
