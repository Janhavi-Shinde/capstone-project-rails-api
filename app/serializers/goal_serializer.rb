class GoalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
  has_many :spheres
end
