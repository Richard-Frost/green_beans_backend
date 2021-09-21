class Region < ApplicationRecord
    has_many :farmers
    has_many :beans
end
