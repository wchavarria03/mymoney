class Category < ApplicationRecord
  has_many :expenses
  has_many :catefory_types
end
