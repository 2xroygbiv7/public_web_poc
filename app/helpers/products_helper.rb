module ProductsHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
  def product_img img, type
    if img.model.main_image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '300', width: '200')
    end
  end
end
