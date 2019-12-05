# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.destroy_all

gijs = User.create(first_name: "Gijs", email: "best@island.com", password: "secret")

Island.create!(user: gijs, name: 'Island of Patroklos', description: 'A culturally and historically rich 643 acre Greek isle close to Athens, Patroklos has been coveted by investors for years. The North-Northeast side of the island is flat, reasonably passable, with soil suitable for cultivation. It has 5,050 olive trees, pine trees and a number of dense bushy areas. About 150 goats owned by the family graze on the island. The northern section covers approximately 275 acres of cultivable land, the remainder being rocky, with green-hued marble.', price: '1000', location: "Lavreotiki", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Rangyai Island', description: 'Located just east of the island of Phuket, an island popular with tourists and estate owners, Rangyai is the largest island currently available for sale in the region. The island is close to both Phuket and Coconut Island both of which are home to numerous resorts, and are very popular with tourists. Ranyai Island is an advantageous position in the area, allowing the prospective owner to capitalize on the development potential of this property.', price: '500', location: "Phuket", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Pumpkin Key', description: 'Pumpkin Key is an extraordinary private island totaling 26 acres in the tropics of Card Sound Bay located in the Florida Keys. Just 10 minutes by helicopter to Miami infamous South Beach and 10 minutes by boat to its shore home with dockage at Ocean Reef, a private club in Key Largo, Florida with an airstrip for private jets. This island with its proximity to Ocean Reef and Miami, offers the opportunity for privacy without isolation. The lush and vibrant landscape offers endless possibilities for development. Self sufficient with water and electric in place from shore to the 12 large bay front lots.', price: '1200', location: "Key Largo", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Spectabilis Island', description: 'The Extraordinary Oasis of The Caribbean. This island sanctuary is offered only to the discerning buyer who has reached the apogee in society and who is seeking and able to afford the absolute best of the best in the world, while having absolute privacy and unmatched beauty. Spectabilis Island is conveniently located in the central Exuma Cays approximately 60 miles from the capital and 230 miles from Miami.', price: '5000', location: "Exumas", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Cave Cay', description: 'Rarely does an island with the attributes of Cave Cay become available. Stunning natural beauty, a protected and private, deep-water harbour and marina with floating cement dock system and 35 dock slips, plus a 2,800 ft. private airstrip make this the perfect private island.

Located in the heart of the Exumas and near to famed Musha Cay, Cave Cay is one of the most beautiful spots in the world and is totally self sufficient with water and power supplied by diesel generators, while solar energy can easily be made available.', price: '8000', location: "Exuma", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Nengo Nengo Atoll', description: 'The Nengo Nengo atoll is located at about 100 km south west of Hao and at about 775 km east of Tahiti (A 2 hour private plane flight from Tahiti). This private Atoll has an oval shape, that is 13 km long and 8 km wide (at its widest point) with a total emerged surface land area of 9km2. Its vast and stunning internal lagoon spreads over some 67km2 and for the past twenty years has been the breeding waters of one of the worlds most beautiful gems: The Tahitian Black Pearl. One of natures most extraordinary masterpieces, Nengo Nengo features its very own private landingstrip and infrastructures that previously accommodated some 80 workers.', price: '1500', location: "Atoll in the Tuamotu", remote_photo_url: "https://source.unsplash.com/random?island")


sleep(2)

Island.create!(user: gijs, name: 'Kandoo Island', description: 'Strictly business', price: '1500', location: "Central America", remote_photo_url: "https://source.unsplash.com/random?island")


sleep(2)

Island.create!(user: gijs, name: 'Corfu', description: 'A beautiful 42 acres tropical island with villa & staff quarters set a midst coconut palms, shrubs and other native plants and trees. The island has a white soft sandy beach all around.

A large 200 acre shallow turquoise lagoon with crystalline waters encircles the island. And the lagoon in its turn is fully encircled by a healthy house reef, which protects the lagoon and the island from eventual heavy sea.', price: '1500', location: "Maldives", remote_photo_url: "https://source.unsplash.com/random?island")


sleep(2)

Island.create!(user: gijs, name: 'Schulzewerder Island', description: 'Professionally managed and run as a campground, Polands beautiful Schulzewerder Island is now for sale.

The well-kept campground on 8.5-hectare Schulzewerder Island is situated directly on Lubie Lake. The only way to reach the campground is by ferry or by boat. The lake is nestled in a magnificent unspoiled landscape of hills and forests. The Lubiesee (17km long and 2.5 km wide) is located about 260km east of Berlin, within easy reach of a well-developed highway.', price: '1500', location: "Zlocieniec", remote_photo_url: "https://source.unsplash.com/random?island")


sleep(2)

Island.create!(user: gijs, name: 'Vouvalos Island', description: 'This stunning private island is located in the Amvrakikos Gulf, a beautiful area located in northwestern Greece. Leading out into the Ionian Sea, the gulf is an idyllic, less-travelled area in a picturesque mountain setting.

The island is more than 31 acres of olive groves, forests, hills and rocky cliffs. A highly unique island, Vouvalos has a striking and unusual shape providing natural harbours. There is also a lagoon in the centre of the island. Dolphins may often be found in the clean surrounding waters, and Vouvalos has beautiful sandy beaches to enjoy Greeces warm and sunny weather. Conveniently located, the island is close to an international airport and several small towns', price: '1500', location: "Amvrakikos Gulf", remote_photo_url: "https://source.unsplash.com/random?island")


sleep(2)

Island.create!(user: gijs, name: 'Windermere', description: 'Windermere An idyllic and lush Bahamian out-island surrounded by pink sands and turquoise subtropical waters, Windermere Island is just 200 miles off Florida’s Gold Coast.

The new Windermere Island Club project consists of 52 breathtaking residential lots – each approximately two acres, with 300 linear feet of beach frontage – on the northern third of the six mile long isle. Lushly canopied with multi-colored mangroves, sea grapes, and silver thatch palms, half the parcels face eastward to the Atlantic Ocean, while the west-facing parcels look out on the tranquil waters of Savannah Sound.', price: '1500', location: "Eleuthera", remote_photo_url: "https://source.unsplash.com/random?island")


sleep(2)

Island.create!(user: gijs, name: 'Taveuni Island', description: 'A rare opportunity to acquire this renowned and fully established, award winning resort and spa. This premiere freehold island property is a unique offering beyond compare!

Along with a list of international awards, Taveuni Island Resort & Spa’s most recent recognition, and one of its most prestigious, to start the year was the Trip Advisor ‘2017 Travelers Choice’ Award, reaffirming this premier resort and spa has all the elements synonymous with top luxury serene island retreats.', price: '1500', location: "Taveuni", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Vadinolhu Island', description: 'This is a 150 room resort development with joint venture opportunity!

Awarded: 2009 (on conditional basis with CSR component)

Lease period remaining: 18 years - there will be option to extend the head lease. There are chances to negotiate with authorities for further extension.', price: '1500', location: "Laamu Atoll", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Serenity Beaches', description: "Welcome to Serenity Beaches, a Tongan beach resort, located on a remote uninhabited island in the Ha'apai island group in The Kingdom of Tonga. Every fale is located, among the trees, on a white sandy beach, providing a truly peaceful, private, and relaxing beach experience. Uoleva was once listed by National Geographic as one of the top 10 island beach destinations in the world. The island is totally surround by sand and people love to take a day and walk the 6 mile (10 K) around the island to experience the total deserted island feel. Serenity is far from the distractions and pace of the 21st century and a perfect place to reconnect with nature, your loved ones, and yourself.", price: '1500', location: "Ha'apai", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Blue Dolphin Island', description: 'Caribbean Nature Eco Luxury Marine Resort & Spa in the Caribbean Sea is under construction and is for sale in the north of Panama in the province of Bocas del Toro, just 14 km (7.6 Nautical miles) from the international airport at the main capital island - just a 20 minute boat ride away. There are 3 flights per day each way from Panama City which are just a 55 minute plane ride.', price: '1500', location: "Panama", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Igoigori Island', description: "Milne Bay is a beautiful maritime and peaceful and safe province in the southeastern tip of Papua New Guinea. This area is renowned for its beautiful coral reefs, as being a diver's paradise, and for the fascinating culture of some of its islands. Its has more than 600 islands, of which only 160 are inhabited.

The coral reef system of Milne Bay are some of the most bio-diverse in the world and as such attract equal attention from dive operators as well.", price: '1500', location: "Milne Bay province", remote_photo_url: "https://source.unsplash.com/random?island")


puts Island.count




















