class Category < ApplicationRecord
  belongs_to :category_type
  has_one :sub_category
  has_many :transactions
end
