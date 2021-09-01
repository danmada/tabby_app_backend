class Customer < ApplicationRecord
    has_many :tabs, dependent: :destroy
    has_many :bars, through: :tabs, dependent: :destroy
end
