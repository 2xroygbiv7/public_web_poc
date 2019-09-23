5.times do |category|
  Category.create!(
    title: "Category #{category}",
    sub_category: "Sub category #{category}"
  )
end

puts "5 categories created"

9.times do |product|
  Product.create!(
    code: "Product_code_#{product}",
    description: "Description #{product}",
    features: "Feature A#{product}\nFeature B#{product}",
    main_image: "http://placehold.it/300x200"
  )
end

puts "9 products created"
