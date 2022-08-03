class User < ApplicationRecord
    has_secure_password
    has_many :spheres

    validates :email, presence: true
    validates :name, presence: true
    validates :password, presence: true
end
