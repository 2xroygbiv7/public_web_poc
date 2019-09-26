3.times do |category|
  Category.create!(
    title: "Category #{category}",
    sub_category: "Sub category #{category}"
  )
end

puts "#{Category.all.length} categories created"

9.times do |product|
  Product.create!(
    code: "Product_code_#{product}",
    description: "Description #{product}",
    features: "Feature A#{product}\nFeature B#{product}",
    main_image: "http://placehold.it/300x200",
    category_id: Category.last.id
  )
end

puts "#{Product.all.length} products created"
