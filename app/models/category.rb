class Category < ApplicationRecord
  validates_presence_of :title, :parent
  has_many :products
end
