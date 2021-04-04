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

Item.create(name: 'Bambora II', price: '$314.00', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/2646/images/26667/apihfgojd__61550.1617400425.386.513.jpg?c=2', color: ['gray', 'white', 'blue'], category: ['abstract'], description: 'Dimensions: 31.5"H x 31.5"W x 2"D. Nuanced neutrals and shades of sapphire take shape in the Bombora abstract prints, a series of 2.')
Item.create(name: 'Season Shift', price: '$523.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/1619/images/23983/api77liho__85879.1617395318.386.513.jpg?c=2', color: ['white', 'orange', 'blue'], category: ['abstract'], description: 'Dimensions: 48.5"H x 48.5"W x 2"D. This impressive abstraction from artist Kelly O’Neal adds a modern note and hint of color to your wall. Printed on canvas with an image brush gel finish for added texture, this piece is displayed in a gold floater frame.')
Item.create(name: 'The Main Event', price: '$543.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/1517/images/23690/apigbxize__86588.1617395042.386.513.jpg?c=2', color: ['black', 'red', 'beige'], category: ['abstract'], description: 'Dimensions: 41.5"H x 61.5"W x 1.5"D. This impressive abstraction from artist Kelly O’Neal adds a modern note and hint of color to your wall. Printed on canvas with an image brush gel finish for added texture, this piece is displayed in a white floater frame. Hangs both vertically and horizontally.')
Item.create(name: 'Onyx Self 2 - Black Frame', price: '$173.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7894/images/44846/apiwjluzw__38547.1617414577.386.513.jpg?c=2', color: ['black', 'white'], category: ['figurative'], description: 'Dimensions: 35.5"H x 27.25"W. Bold in black and white, this abstract portrait from Jennifer Paxton Parker adds a fun, modern note to any space. Printed on paper, this piece is set under glass in a black wood frame.')
Item.create(name: 'Deep Thought', price: '$488.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/4664/images/36135/apiqbppsf__30033.1617402104.386.513.jpg?c=2', color: ['grey', 'red', 'beige', 'blue', 'teal'], category: ['abstract'], description: 'Ideal for adding a colorful, modern note to your wall, this large-scale abstraction from artist Sarah Stockstill is printed on gallery-wrapped canvas with an image brush gel finish for added texture. Hangs both vertically and horizontally. Unframed.')
Item.create(name: 'Mediterranean Blue 2', price: '$138.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7561/images/43950/apib11muu__20544.1617411333.386.513.jpg?c=2', color: ['blue', 'white', 'beige'], category: ['abstract'], description: 'Rendered with expressive brushstrokes and a beautiful pop of blue, this abstract Mediterranean print from artist Jennifer Paxton Parker is printed on paper, matted, and displayed under glass in a white frame.')
Item.create(name: 'Louvre 1', price: '$418.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7214/images/42999/apicgxm0h__70095.1617536890.386.513.jpg?c=2', color: ['beige', 'white', 'black'], category: ['figurative', 'fashion'], description: 'Ideal for adding a modern note to your wall, this striking double portrait from artist Giselle Kelly is printed on canvas with an image brush gel finish for added texture. Unframed.')
Item.create(name: 'Louvre 2', price: '$418.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7505/images/43745/apiwoqy9t__21965.1617410994.386.513.jpg?c=2', color: ['beige', 'white', 'black'], category: ['figurative', 'fashion'], description: 'Ideal for adding a modern note to your wall, this striking double portrait from artist Giselle Kelly is printed on canvas with an image brush gel finish for added texture. Unframed.')
Item.create(name: 'Masque 1', price: '$117.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7201/images/42960/apicemja7__32934.1617408524.386.513.jpg?c=2', color: ['beige', 'white', 'black'], category: ['figurative'], description: 'Defined by its clever use of negative space, this abstract portrait from artist Victoria Barnes adds a fun, modern note to any space. Printed on paper and displayed under glass in a matte black frame.')
Item.create(name: 'Woman Power 1', price: '$418.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/6430/images/41213/api5csfl9__04299.1617406244.386.513.jpg?c=2', color: ['orange', 'grey', 'brown'], category: ['figurative', 'fashion'], description: 'Composed with an impressive sense of balance, depth, and color, this stunning figural work from artist Michel Smith Boyd is printed on canvas with silver-leaf accents and an image brush gel finish for added texture. Unframed.')
Item.create(name: 'She Shadow 1', price: '$103.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/6334/images/41015/apimechve__36586.1617405985.386.513.jpg?c=2', color: ['multi-color'], category: ['figurative'], description: 'This portrait from artist Grace Popp brings an undeniably modern sensibility to your wall. Printed on fine-art paper, this piece is displayed under glass in a solid wood frame with a white-and-gold finish.')
Item.create(name: 'She Shadow 2', price: '$103.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/6335/images/41018/apizxemxt__21406.1617534602.386.513.jpg?c=2', color: ['multi-color'], category: ['figurative'], description: 'This portrait from artist Grace Popp brings an undeniably modern sensibility to your wall. Printed on fine-art paper, this piece is displayed under glass in a solid wood frame with a white-and-gold finish.')
Item.create(name: 'Catwalk', price: '$348.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/533/images/20057/apihfovvr__60331.1617390149.386.513.jpg?c=2', color: ['grey', 'gold', 'black', 'beige'], category: ['figurative', 'fashion'], description: 'With use of vibrant colors and effortless style, Catwalk embodies the world of high fashion. Highlighting stunning ensembles, statuesque abstract models, shown as dark silhouettes, are juxtaposed against bold hues of color, emphasizing the flowing outfits as the focal point. Infusing its surroundings with vivid color, Catwalk was created as a fashion forward piece with modern flair.')
Item.create(name: 'Underwater Beauty', price: '$348.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/580/images/20202/apibfajg5__29269.1617390284.386.513.jpg?c=2', color: ['green', 'blue'], category: ['figurative'], description: 'Expressive and wondrous, Underwater Beauty, adorns your walls with a stunning visual statement. Showcasing the silhouette of a woman swimming, deep shades of aqua and indigo blue juxtapose against ivory and emerald to create a stunning complementary pairing. Grandiose in size, Underwater Beauty has been gallery wrapped for modern appeal.')
Item.create(name: 'La Brute', price: '$103.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7225/images/43032/apiqsc5xn__08765.1617408647.386.513.jpg?c=2', color: ['multi-color'], category: ['animals'], description: 'Full of color and charm, this work is ideal for bringing a modern sensibility to the wall. Printed on paper, this piece is displayed in a gold-finished shadowbox frame.')
Item.create(name: 'Milano Catwalk', price: '$488.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/4653/images/36124/apiz0vk5i__41192.1617531019.386.513.jpg?c=2', color: ['multi-color'], category: ['figurative', 'fashion'], description: 'A standout addition to any space, this work from artist Ann Duffy captures the action on a catwalk with elegant, free-flowing lines. Printed on gallery-wrapped canvas with a hand-applied image brush gel finish for added texture.')
Item.create(name: 'Fashion Contour', price: '$124.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/6391/images/41633/api6bfizf__50979.1617534768.386.513.jpg?c=2', color: ['black', 'white'], category: ['figurative', 'fashion'], description: 'A captivating study of form, this work from artist Shawn Mackey is printed on fine-art paper, set off with a white mat, and displayed under glass in a solid wood frame with a matte black finish.')
Item.create(name: 'Fashion Silhouette', price: '$124.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/6390/images/41630/api4nivgd__96317.1617534767.386.513.jpg?c=2', color: ['black', 'white'], category: ['figurative', 'fashion'], description: 'A captivating study of form, this work from artist Shawn Mackey is printed on fine-art paper, set off with a white mat, and displayed under glass in a solid wood frame with a matte black finish.')
Item.create(name: 'Energy in Motion 1', price: '$453.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/4651/images/36122/apiz0kwgw__43667.1617531017.386.513.jpg?c=2', color: ['black', 'white'], category: ['abstract'], description: 'A standout addition to any space, this abstraction from artist Dawn Sweitzer showcases bold brushstrokes and a high-contrast color palette. Printed on gallery-wrapped canvas with a hand-applied image brush gel finish for added texture.')
Item.create(name: 'Energy in Motion 2', price: '$453.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/4652/images/36123/apiy7zoab__97462.1617531018.386.513.jpg?c=2', color: ['black', 'white'], category: ['abstract'], description: 'A standout addition to any space, this abstraction from artist Dawn Sweitzer showcases bold brushstrokes and a high-contrast color palette. Printed on gallery-wrapped canvas with a hand-applied image brush gel finish for added texture.')
Item.create(name: 'Riverbend 1', price: '$348.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7230/images/43048/apigbcqqd__88289.1617536968.386.513.jpg?c=2', color: ['blue', 'white', 'gold'], category: ['abstract'], description: 'Set off with a gold floater frame, this stunning abstraction is printed on canvas with hand-applied gold leaf accents.')
Item.create(name: 'Riverbend 2', price: '$348.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7231/images/43051/api4zz8tv__08674.1617536969.386.513.jpg?c=2', color: ['blue', 'white', 'gold'], category: ['abstract'], description: 'Set off with a gold floater frame, this stunning abstraction is printed on canvas with hand-applied gold leaf accents.')
Item.create(name: 'Ida', price: '$313.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7559/images/43944/apijfdoxl__54272.1617539337.386.513.jpg?c=2', color: ['pink', 'blue'], category: ['abstract'], description: 'Ideal for adding a colorful, modern note to your wall, this abstraction is printed on canvas, enhanced with a hand-applied textural finish, and set in a gold floater frame.')
Item.create(name: 'John', price: '$313.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/7558/images/43941/apil91tte__74889.1617539336.386.513.jpg?c=2', color: ['yellow', 'blue'], category: ['abstract'], description: 'Ideal for adding a colorful, modern note to your wall, this abstraction is printed on canvas, enhanced with a hand-applied textural finish, and set in a gold floater frame.')
Item.create(name: 'Cherry Blossoms Collage', price: '$453.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/2738/images/26661/apia2m1il__84357.1617529497.386.513.jpg?c=2', color: ['pink', 'white', 'grey'], category: ['nature'], description: 'Feels like Spring, all year round. Branches of cherry blossoms extend across a grand canvas in ultra-femme blush tones.')
Item.create(name: 'Flora Bora', price: '$488.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/5876/images/39859/apiq3uus7__48935.1617533579.386.513.jpg?c=2', color: ['multi-color'], category: ['nature'], description: 'Featuring expressive brushstrokes and pops of color, this floral abstraction from artist Sarah Stockstill is printed on gallery-wrapped canvas with an image brush gel finish for added texture. Hangs both vertically and horizontally. Unframed.')
Item.create(name: 'Gold Blossoms', price: '$453.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/1699/images/24261/apivi45st__34157.1617524673.386.513.jpg?c=2', color: ['gold', 'white', 'beige'], category: ['nature'], description: 'Gold art print for modern take on cherry blossoms.')
Item.create(name: 'Adorned', price: '$488.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/4670/images/36141/apimj6elq__82998.1617531058.386.513.jpg?c=2', color: ['multi-color'], category: ['nature'], description: 'Rendered in vivid color, this stunning floral portrait from artist Fern Cassidy is printed on gallery-wrapped canvas with an image brush gel finish for added texture. Unframed.')
Item.create(name: 'Southern Charm', price: '$488.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/5104/images/37663/apieyljqu__52780.1617531753.386.513.jpg?c=2', color: ['multi-color'], category: ['nature'], description: 'This floral still life by D’Alessandro Leon is characterized by its bold brushstrokes, paint drips, and hazy, atmospheric quality. Printed on canvas with an image brush gel finish for added texture, this piece is displayed in a silver floater frame.')
Item.create(name: 'All I Have', price: '$138.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/587/images/20224/apistyeuw__62060.1617519784.386.513.jpg?c=2', color: ['multi-color'], category: ['nature'], description: 'Cast in soothing hues with an emphasis on the play of light against water, All I Have adorns your walls with stunning landscape imagery. Tonal hues of sapphire and aqua give way to lighter shades of linen white, forming the silhouette of clouds on the horizon line. Drawing the viewer into the depth of the piece, breaking waves are shown frothing as the sea retreats along the sand only to break again.')
Item.create(name: 'Northern Beach 2', price: '$453.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/985/images/21685/apit5heue__41903.1617521568.386.513.jpg?c=2', color: ['blue', 'beige'], category: ['nature'], description: 'Our canvas artworks are hand-painted or giclee prints on canvas, gallery wrapped around stretcher bars for a clean finish.')
Item.create(name: 'Northern Beach 2', price: '$453.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/985/images/21685/apit5heue__41903.1617521568.386.513.jpg?c=2', color: ['blue', 'beige'], category: ['nature'], description: 'Our canvas artworks are hand-painted or giclee prints on canvas, gallery wrapped around stretcher bars for a clean finish.')
Item.create(name: 'Happy Thoughts', price: '$523.99', img_url: 'https://cdn11.bigcommerce.com/s-whvhnri10h/products/4702/images/36173/apihqr359__01279.1617531133.386.513.jpg?c=2', color: ['multi-color'], category: ['nature'], description: 'A standout addition to any space, this lively floral work from artist Eve Fairwell is printed on canvas with an image brush gel finish for added texture. Unframed.')








CartItem.create(cart_id: Cart.first.id, item_id: Item.first.id, quantity: 1)
CartItem.create(cart_id: Cart.second.id, item_id: Item.second.id, quantity: 1)

Review.create(user_id: User.first.id, item_id: Item.first.id, comment: "This painting adds dimension to my office", rating: 5)
Review.create(user_id: User.second.id, item_id: Item.second.id, comment: "Material and quality of art is superb!", rating: 5)