# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

farmer1 = Farmer.create(name: "Hacienda Rio Negro", region: "Central America")
Bean.create(name: "Costa Rica Rio Negro RFA", farmer_id: farmer1.id, description: "Great for medium to dark roast")   

farmer2 = Farmer.create(name: "Lintong Sigumpar Village", region: "Asia")
Bean.create(name: "Sumatra Lintong Sigumpar Village", farmer_id: farmer2.id, description: "A complex Sumatra with syrupy, rustic sweetness, earth and herbal notes, licorice, and aromatic wood. Intense chocolate roast bittering when roasted dark. City+ to Full City+. Good for espresso.")

farmer3 = Farmer.create(name: "Dambi Uddo", region: "Africa")
Bean.create(name: "Ethiopia Dry Process Buno Dambi Uddo", farmer_id: farmer3.id, description: "A fruit salad of flavors, peach, mango, and honey dew melon, passion fruit florals, and with moderate acidity that's a bit like stone fruit. Add an overlay of deep chocolate bass notes with heavier roasting. City to Full City.")

farmer4 = Farmer.create(name: "Cafeicultores de Minas", region: "South America")
Bean.create(name:"Brazil Dry Process Cafeicultores de Minas", farmer_id: farmer4.id, description: "Intense roast bittering underscores flavors of rustic baking chocolate and semi-sweet chocolate chips, with notes of peanut taffy, sesame cookie, and a hint of amaretto. Great for milk drinks! Full City to Full City+. Good for espresso.")

farmer5 = Farmer.create(name: "Tierra Blanca", region: "North America") 
Bean.create(name: "Mexico FTO Comunidad Tierra Blanca", farmer_id: farmer5.id, description: "Syrupy base sweetness, fruit and nut hints, torrone nougat made with honey and toasted almonds, vanilla, baked apple, and malic type acidic impression. City to Full City.")
