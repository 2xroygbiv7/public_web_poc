class Product < ApplicationRecord
  validates :code, presence: true
  belongs_to :category
  
  def self.pens
    pens = Category.where(parent: "pen").ids
    where(id: pens)
  end
  scope :markers, -> { where(id: Category.where(parent: "marker").ids) }
end
