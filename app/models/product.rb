class Product < ApplicationRecord
  include Placeholder
  has_many :badges
  accepts_nested_attributes_for :badges, reject_if: lambda { |attrs| attrs['title'].blank? }
  validates :code, presence: true
  belongs_to :category

  mount_uploader :main_image, ProductUploader

  def self.pens
    pens = Category.where(parent: "pen").ids
    where(id: pens)
  end
  scope :markers, -> { where(id: Category.where(parent: "marker").ids) }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 150,width: 100)
  end
end
