class Item < ApplicationRecord
    has_many :octo_items
    has_many :octopi, through: :octo_items
end
