class Product < ApplicationRecord
  validates :code, presence: true
  belongs_to :category
  
  def self.pens
    pens = Category.where(parent: "pen").ids
    where(id: pens)
  end
  scope :markers, -> { where(id: Category.where(parent: "marker").ids) }
  
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/150x100"
  end
end
