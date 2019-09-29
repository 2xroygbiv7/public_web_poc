class Category < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :parent
  has_many :products
  
  after_initialize :set_defaults

  def set_defaults
    self.image ||= Placeholder.image_generator(height: 50, width: 200)
  end
end
