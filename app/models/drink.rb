class Drink < ApplicationRecord
  belongs_to :bar, dependent: :destroy
end
