class Category < ApplicationRecord
  has_many :expenses
  has_many :category_types
end
