class Badge < ApplicationRecord
  belongs_to :product

  after_initialize :set_defaults

  def set_defaults
    self.image ||= Placeholder.image_generator(height:50, width: 50)
  end
end
