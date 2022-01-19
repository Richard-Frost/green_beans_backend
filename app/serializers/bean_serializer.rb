class BeanSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :farmer_id, :farmer
  belongs_to :farmer
end
