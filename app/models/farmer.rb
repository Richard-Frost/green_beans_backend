class Farmer < ApplicationRecord
    has_many :beans
    belongs_to :bean, optional: true
end
