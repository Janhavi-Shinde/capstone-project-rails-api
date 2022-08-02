class Goal < ApplicationRecord
    has_many :spheres_goals
    has_many :spheres, through: :spheres_goals
end
