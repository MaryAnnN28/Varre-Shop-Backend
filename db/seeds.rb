# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cart.destroy_all
CartItem.destroy_all
Item.destroy_all
Review.destroy_all

User.create(first_name: 'Mary', last_name: 'Nava', email: 'mdnava28@gmail.com', password: 'marynava123')
User.create(first_name: 'Katie', last_name: 'Smith', email: 'ktsmith@gmail.com', password: 'katie12345')

Cart.create(user_id: User.first.id)
Cart.create(user_id: User.second.id)

Item.create(name: 'Bambora II', price: '$314.00', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/2646/img_urls/26667/apihfgojd__61550.1617400425.386.513.jpg?c=2', color: ['gray', 'white', 'blue'], category: ['abstract'], description: 'Dimensions: 31.5"H x 31.5"W x 2"D. Nuanced neutrals and shades of sapphire take shape in the Bombora abstract prints, a series of 2.')
Item.create(name: 'Season Shift', price: '$523.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/1619/img_urls/23983/api77liho__85879.1617395318.386.513.jpg?c=2', color: ['white', 'orange', 'blue'], category: ['abstract'], description: 'Dimensions: 48.5"H x 48.5"W x 2"D. This impressive abstraction from artist Kelly O’Neal adds a modern note and hint of color to your wall. Printed on canvas with an img_url brush gel finish for added texture, this piece is displayed in a gold floater frame.')
Item.create(name: 'The Main Event', price: '$543.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/1517/img_urls/23690/apigbxize__86588.1617395042.386.513.jpg?c=2', color: ['black', 'red', 'beige'], category: ['abstract'], description: 'Dimensions: 41.5"H x 61.5"W x 1.5"D. This impressive abstraction from artist Kelly O’Neal adds a modern note and hint of color to your wall. Printed on canvas with an img_url brush gel finish for added texture, this piece is displayed in a white floater frame. Hangs both vertically and horizontally.')
Item.create(name: 'Onyx Self 2 - Black Frame', price: '$173.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7894/img_urls/44846/apiwjluzw__38547.1617414577.386.513.jpg?c=2', color: ['black', 'white'], category: ['figurative'], description: 'Dimensions: 35.5"H x 27.25"W. Bold in black and white, this abstract portrait from Jennifer Paxton Parker adds a fun, modern note to any space. Printed on paper, this piece is set under glass in a black wood frame.')
Item.create(name: 'Deep Thought', price: '$488.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/4664/img_urls/36135/apiqbppsf__30033.1617402104.386.513.jpg?c=2', color: ['grey', 'red', 'beige', 'blue', 'teal'], category: ['abstract'], description: 'Ideal for adding a colorful, modern note to your wall, this large-scale abstraction from artist Sarah Stockstill is printed on gallery-wrapped canvas with an img_url brush gel finish for added texture. Hangs both vertically and horizontally. Unframed.')
Item.create(name: 'Mediterranean Blue 2', price: '$138.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7561/img_urls/43950/apib11muu__20544.1617411333.386.513.jpg?c=2', color: ['blue', 'white', 'beige'], category: ['abstract'], description: 'Rendered with expressive brushstrokes and a beautiful pop of blue, this abstract Mediterranean print from artist Jennifer Paxton Parker is printed on paper, matted, and displayed under glass in a white frame.')
Item.create(name: 'Louvre 2', price: '$418.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7505/img_urls/43745/apiwoqy9t__21965.1617410994.386.513.jpg?c=2', color: ['beige', 'white', 'black'], category: ['figurative'], description: 'Ideal for adding a modern note to your wall, this striking double portrait from artist Giselle Kelly is printed on canvas with an img_url brush gel finish for added texture. Unframed.')
Item.create(name: 'Masque 1', price: '$117.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7201/img_urls/42960/apicemja7__32934.1617408524.386.513.jpg?c=2', color: ['beige', 'white', 'black'], category: ['figurative'], description: 'Defined by its clever use of negative space, this abstract portrait from artist Victoria Barnes adds a fun, modern note to any space. Printed on paper and displayed under glass in a matte black frame.')
Item.create(name: 'Woman Power 1', price: '$418.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/6430/img_urls/41213/api5csfl9__04299.1617406244.386.513.jpg?c=2', color: ['orange', 'grey', 'brown'], category: ['figurative'], description: 'Composed with an impressive sense of balance, depth, and color, this stunning figural work from artist Michel Smith Boyd is printed on canvas with silver-leaf accents and an img_url brush gel finish for added texture. Unframed.')
Item.create(name: 'She Shadow 1', price: '$103.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/6334/img_urls/41015/apimechve__36586.1617405985.386.513.jpg?c=2', color: ['multi-color'], category: ['figurative'], description: 'This portrait from artist Grace Popp brings an undeniably modern sensibility to your wall. Printed on fine-art paper, this piece is displayed under glass in a solid wood frame with a white-and-gold finish.')
Item.create(name: 'Catwalk', price: '$348.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/533/img_urls/20057/apihfovvr__60331.1617390149.386.513.jpg?c=2', color: ['grey', 'gold', 'black', 'beige'], category: ['figurative'], description: 'With use of vibrant colors and effortless style, Catwalk embodies the world of high fashion. Highlighting stunning ensembles, statuesque abstract models, shown as dark silhouettes, are juxtaposed against bold hues of color, emphasizing the flowing outfits as the focal point. Infusing its surroundings with vivid color, Catwalk was created as a fashion forward piece with modern flair.')
Item.create(name: 'Underwater Beauty', price: '$348.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/580/img_urls/20202/apibfajg5__29269.1617390284.386.513.jpg?c=2', color: ['green', 'blue'], category: ['figurative'], description: 'Expressive and wondrous, Underwater Beauty, adorns your walls with a stunning visual statement. Showcasing the silhouette of a woman swimming, deep shades of aqua and indigo blue juxtapose against ivory and emerald to create a stunning complementary pairing. Grandiose in size, Underwater Beauty has been gallery wrapped for modern appeal.')
Item.create(name: 'La Brute', price: '$103.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7225/img_urls/43032/apiqsc5xn__08765.1617408647.386.513.jpg?c=2', color: ['multi-color'], category: ['animals'], description: 'Full of color and charm, this work is ideal for bringing a modern sensibility to the wall. Printed on paper, this piece is displayed in a gold-finished shadowbox frame.')


CartItem.create(cart_id: Cart.first.id, item_id: Item.first.id, quantity: 1)
CartItem.create(cart_id: Cart.second.id, item_id: Item.second.id, quantity: 1)

Review.create(user_id: User.first.id, item_id: Item.first.id, comment: "This painting adds dimension to my office", rating: 5)
Review.create(user_id: User.second.id, item_id: Item.second.id, comment: "Material and quality of art is superb!", rating: 5)