class Farmer < ApplicationRecord
    has_many :beans
    belongs_to :bean, optional: true
    belongs_to :region
end
