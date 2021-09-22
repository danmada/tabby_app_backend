class Customer < ApplicationRecord
    has_many :tabs, dependent: :destroy
    has_many :bars, through: :tabs, dependent: :destroy
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :name, presence: true
    validates :age, presence: true, numericality: { only_integer: true, greater_than: 20 }
    validates :email, presence: true, uniqueness: true
    validates :credit_card, presence: true, numericality: true

end
