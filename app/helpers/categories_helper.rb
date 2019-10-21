module CategoryHelper
  def category_img
    if img.model.image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '300', width: '200')
    end
  end
end
