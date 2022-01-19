class FarmerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :region, :beans
  has_many :beans
end
