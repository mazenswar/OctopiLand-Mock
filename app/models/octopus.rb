class Octopus < ApplicationRecord
    has_many :octo_items
    has_many :items, through: :octo_items
end
