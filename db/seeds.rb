category_list = [
  [ "ballpoint", "pen" ],
  [ "energel", "pen"],
  [ "permanent", "marker"],
  [ "whiteboard", "marker"]
]

category_list.each do |title, parent|
  Category.create!(
    title: title,
    parent: parent
  )
end

puts "#{Category.all.length} categories created"

product_list = [
   [ "BL107", 
     "Energel X", 
     "0.7mm retractable gel pen\nQuick dry ink. Ideal for left-handed writers\nSuper smooth, high quality liquid gel ink",
     "http://placehold.it/150x100",
     Category.find_by(title: "energel").id
   ],
   [ "BL110", 
     "Energel X", 
     "1.0mm retractable gel pen\nQuick dry ink. Ideal for left-handed writers\nSuper smooth, high quality liquid gel ink",
     "http://placehold.it/150x100",
     Category.find_by(title: "energel").id
   ],
   [ "N50", 
     "Pentel Pen Permanent Marker", 
     "3.0mm to 4.0mm bullet point permanent marker\nRobust aluminium barrel. Ideal of touch work environments\nBonded fibre tip retains its shape",
     "http://placehold.it/150x100",
     Category.find_by(title: "permanent").id
   ],
   [ "N60", 
     "Pentel Pen Permanent Marker", 
     "4.0mm to 5.0mm bullet point permanent marker\nRobust aluminium barrel. Ideal of touch work environments\nBonded fibre tip retains its shape",
     "http://placehold.it/150x100",
     Category.find_by(title: "permanent").id
   ]
]
 
   product_list.each do |code, description, features, main_image, category_id|
   Product.create!(
     code: code, 
     description: description,
     features: features,
     main_image: main_image,
     category_id: category_id
   )
 end
 
 puts "#{Product.all.length} products created"

 badge_list = [
   ["recycology",
    Product.find_by(code: "BL107").id
   ],
   ["no_pvc",
    Product.find_by(code: "N50").id
   ],
   ["refillable",
    Product.find_by(code: "BL107").id
   ]
]
badge_list.each do |title,id|
  Badge.create!(
    title: title,
    product_id: id
  )
end

 puts "#{Badge.all.length} badges created"
