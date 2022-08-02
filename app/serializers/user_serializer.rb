class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :spheres
  has_many :spheres
end
