class Product < ApplicationRecord
  validates :code, presence: true
  belongs_to :category
end
