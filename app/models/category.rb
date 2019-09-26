class Category < ApplicationRecord
  validates_presence_of :title, :sub_category
end
