class Customer < ApplicationRecord
    has_many :tabs, dependent: :destroy
    has_many :bars, through: :tabs, dependent: :destroy
    has_secure_password

    validates :username, presence: true, uniqueness: true
end
