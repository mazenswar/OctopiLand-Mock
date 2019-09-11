octo_images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbT5zBua0l-qH_U-6uIZ_SD47LJwOBgdoSHPWAyMgsGGqgR9HGSg",
    "http://web.simmons.edu/~mahonecj/comm225/final/website/images/blue-ringed/maxresdefault-1.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD0u51ZgG6X3Cz5uA-l0SqGJr-2xHtkUNR3FyO-LRH01ZN0Mx0hg",
    "https://amp.businessinsider.com/images/5cb656aef7d2901183602186-750-501.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzBZ8yoxpVPTFF5JgaTzavr9b1XU-uDfR6s7zOGTjZGAwBT_DW",
    "http://www.natgeokids.com/wp-content/uploads/2017/04/Octopus-facts-3.jpg",
    "https://media.newyorker.com/photos/59097649019dfc3494ea2c6b/master/w_727,c_limit/Riederer-Inky-the-Octopus.jpg",
    "https://saywhat.news/wp-content/uploads/2018/09/img2-2.jpg",
    "https://media.fromthegrapevine.com/assets/images/2015/10/octopus-small.jpg.480x0_q71_crop-scale.jpg",
    "https://ichef.bbci.co.uk/images/ic/640x360/p07kjbwm.jpg",
    "https://www.aqua.org/-/media/Images/blog/2017/Animals/blog-world-octo-day-640x420.ashx?la=en&hash=B16892F3779DE2F6D0C28C7EBEC8A9D412F21C9D"
]

items = {
    "Mangoes": "https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/07/24/13/97755472.jpg?w968h681",
    "Tomatoes": "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/tomatoes-1296x728-feature.jpg?w=1155&h=1528",
    "Avocados": "https://www.wellandgood.com/wp-content/uploads/2019/01/Stocksy-avocados-pits-Marti-Sans.jpg",
    "Dragon Fruit": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwIWElPezjmMj3BilsHmYbNl4Xj31z9SI8KXS2HaMpgcyED_inug",
    "Sunflowers": "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555387742/shape/mentalfloss/640field.jpg",
    "Oranges": "https://www.bbcgoodfood.com/sites/default/files/guide/guide-image/2017/06/oranges-health-benefits-main-image-700-350.jpg",
    "Moonshine": "https://media.istockphoto.com/illustrations/sketchy-moonshine-jug-illustration-id165817992?k=6&m=165817992&s=612x612&w=0&h=NaxtRqKhOUxLCKtehoa6PQyeQs_dJSuPsgWiEwWbAbo=",
    "Potatoes": "https://gbc-cdn-public-media.azureedge.net/img75602.1426x713.jpg",
    "Lavender": "https://www.gardendesign.com/pictures/images/900x705Max/site_3/english-lavender-lavandula-angustifolia-garden-design_11716.jpg",
    "Mint": "https://www.aspca.org/sites/default/files/mint_facebook.jpg"
}



items.each do |k,v|
    Item.create(name: k, img_url: v)
end


octo_images.each do |img|
    name = Faker::FunnyName.name_with_initial 
    oct = Octopus.create(name: name, img_url: img)
    OctoItem.create(octopus: oct, item: Item.all.sample)
    OctoItem.create(octopus: oct, item: Item.all.sample)
    OctoItem.create(octopus: oct, item: Item.all.sample)
end

# Octopus.all.each do |oct|
#     name = "🌼🌻🌸 The Garden of #{oct.name} 🌸🌻🌼"
#     Garden.create(octopus: oct, name: name)
# end


# Octopus.all.each do |oct|
#     OctoItem.create(octopus: oct, item: Item.all.sample)
#     OctoItem.create(octopus: oct, item: Item.all.sample)
#     OctoItem.create(octopus: oct, item: Item.all.sample)
# end



puts "Success!!!!!"

#   create_table "garden_items", force: :cascade do |t|
#     t.bigint "garden_id"
#     t.bigint "item_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["garden_id"], name: "index_garden_items_on_garden_id"
#     t.index ["item_id"], name: "index_garden_items_on_item_id"
#   end

#   create_table "gardens", force: :cascade do |t|
#     t.string "name"
#     t.string "size"
#     t.bigint "octopus_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["octopus_id"], name: "index_gardens_on_octopus_id"
#   end

#   create_table "items", force: :cascade do |t|
#     t.string "name"
#     t.string "img_url"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "octopi", force: :cascade do |t|
#     t.string "name"
#     t.string "img_url"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end
