# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Supplier.create(name: "Amazon", email: "amazon@email.com", phone_number: "243222342")
Supplier.create(name: "Think Geek", email: "thinkgeek@email.com", phone_number: "5432534")

Product.create({ supplier_id: 2, name: "WNYX Mug", price: "2.99", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape" })
Product.create({ supplier_id: 2, name: "Hitchhiker's Guide to the Galaxy", price: "42.0", description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover." })
Product.create({ supplier_id: 2, name: "Lightsaber", price: "270.10", description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster" })
Product.create({ supplier_id: 1, name: "Space Cowboy Laser Gun", price: "170.0", description: "This weapon has no other description than, Shiney!" })
Product.create({ supplier_id: 2, name: "DnD Dice set", price: "57.50", description: "Take down mighty dragons with this timeless set of 20 sided wonders" })
Product.create({ supplier_id: 1, name: "Sonic Screwdriver", price: "9.99", description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood" })
Product.create({ supplier_id: 2, name: "Yoda sleeping bag", price: "40.00", description: "For real" })

Image.create(product_id: 1, url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png")
Image.create(product_id: 2, url: "http://www.notcot.com/images/guide.gif")
Image.create(product_id: 3, url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif")
Image.create(product_id: 4, url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776")
Image.create(product_id: 5, url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg")
Image.create(product_id: 6, url: "http://www.thinkgeek.com/images/products/zoom/imkj_12th_doc_sonic_screw_remote.jpg")
Image.create(product_id: 7, url: "https://staticdelivery.nexusmods.com/mods/1151/images/12353-0-1461721930.png")

Category.create!(name: "Weapons")
Category.create!(name: "Star Wars")
Category.create!(name: "Household goods")

CategoryProduct.create!(product_id: 1, category_id: 3)
CategoryProduct.create!(product_id: 2, category_id: 3)
CategoryProduct.create!(product_id: 3, category_id: 1)
CategoryProduct.create!(product_id: 3, category_id: 2)
CategoryProduct.create!(product_id: 4, category_id: 1)
CategoryProduct.create!(product_id: 5, category_id: 3)
CategoryProduct.create!(product_id: 6, category_id: 1)
CategoryProduct.create!(product_id: 7, category_id: 2)
CategoryProduct.create!(product_id: 7, category_id: 3)
