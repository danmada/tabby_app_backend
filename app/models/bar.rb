class Bar < ApplicationRecord
    has_many :drinks, dependent: :destroy
    has_many :tabs, dependent: :destroy
    has_many :customers, through: :tabs, dependent: :destroy
    has_secure_password

    validates :adminUser, presence: true, uniqueness: true
end
