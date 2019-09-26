class Category < ApplicationRecord
  validates_presence_of :title, :sub_category
  has_many :products
end
