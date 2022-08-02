class SphereSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at, :title
  belongs_to :user
  has_many :goals 
end
