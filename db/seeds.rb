# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sprouts = Store.create(name: "Sprouts")
tj = Store.create(name: "Trader Joes")
specialty = Store.create(name: "Specialty")

no_aisle = Zone.create(
  aisle: "No aisle",
  store_id: specialty.id
)
no_aisle = Zone.create(
  aisle: "No aisle",
  store_id: tj.id
)
no_aisle = Zone.create(
  aisle: "No aisle",
  store_id: sprouts.id
)
veggie = Zone.create(
  aisle: "Veggie",
  store_id: sprouts.id
)
meat = Zone.create(
  aisle: "Meat",
  store_id: sprouts.id
)
bulk = Zone.create(
  aisle: "Bulk",
  store_id: sprouts.id
)
dairy = Zone.create(
  aisle: "Dairy",
  store_id: sprouts.id
)
bread = Zone.create(
  aisle: "Bread",
  store_id: sprouts.id
)
personal = Zone.create(
  aisle: "Personals",
  store_id: sprouts.id
)
front = Zone.create(
  aisle: "Front aisles",
  store_id: sprouts.id
)
mid = Zone.create(
  aisle: "Mid aisles",
  store_id: sprouts.id
)
back = Zone.create(
  aisle: "Back aisles",
  store_id: sprouts.id
)
booze = Zone.create(
  aisle: "Booze",
  store_id: tj.id
)
frozen = Zone.create(
  aisle: "Frozen",
  store_id: tj.id
)




collards = Item.create(
  name: "Collards",
  to_get: false
)
collards.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: collards.id
)

onion = Item.create(
  name: "Onion",
  to_get: false
)
onion.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: onion.id
)
onion.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: onion.id
)

lime = Item.create(
  name: "Lime",
  to_get: false
)
lime.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: lime.id
)
lime.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: lime.id
)

lemon = Item.create(
  name: "Lemon",
  to_get: false
)
lemon.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: lemon.id
)
lemon.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: lemon.id
)

blueberries = Item.create(
  name: "Blueberries",
  to_get: false
)
blueberries.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: blueberries.id
)
blueberries.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: blueberries.id
)

cabbage = Item.create(
  name: "Cabbage",
  to_get: false
)
cabbage.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: cabbage.id
)
cabbage.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: cabbage.id
)

greens = Item.create(
  name: "Greens, any",
  to_get: false
)
greens.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: greens.id
)
greens.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: greens.id
)

garlic = Item.create(
  name: "Garlic",
  to_get: false
)
garlic.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: garlic.id
)
garlic.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: garlic.id
)

ginger = Item.create(
  name: "Ginger",
  to_get: false
)
ginger.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: ginger.id
)
ginger.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: ginger.id
)

sweet_potato = Item.create(
  name: "Sweet Potato",
  to_get: false
)
sweet_potato.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: sweet_potato.id
)
sweet_potato.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: sweet_potato.id
)

kale = Item.create(
  name: "Kale",
  to_get: false
)
kale.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: kale.id
)
kale.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: kale.id
)

spinach = Item.create(
  name: "Spinach",
  to_get: false
)
spinach.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: spinach.id
)
spinach.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: spinach.id
)

caulifower = Item.create(
  name: "Cauliflower",
  to_get: false
)
caulifower.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: caulifower.id
)
caulifower.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: caulifower.id
)

avocado = Item.create(
  name: "Avocado",
  to_get: false
)
avocado.locations << Location.create(
  store_id: sprouts.id,
  zone_id: veggie.id,
  item_id: avocado.id
)
avocado.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: avocado.id
)

eggs = Item.create(
  name: "Eggs",
  to_get: false
)
eggs.locations << Location.create(
  store_id: sprouts.id,
  zone_id: dairy.id,
  item_id: eggs.id
)
eggs.locations << Location.create(
  store_id: tj.id,
  zone_id: dairy.id,
  item_id: eggs.id
)

cheese = Item.create(
  name: "Cheese",
  to_get: false
)
cheese.locations << Location.create(
  store_id: sprouts.id,
  zone_id: dairy.id,
  item_id: cheese.id
)
cheese.locations << Location.create(
  store_id: tj.id,
  zone_id: dairy.id,
  item_id: cheese.id
)

salami = Item.create(
  name: "Salami / Prosciutto",
  to_get: false
)
salami.locations << Location.create(
  store_id: sprouts.id,
  zone_id: meat.id,
  item_id: salami.id
)
salami.locations << Location.create(
  store_id: tj.id,
  zone_id: meat.id,
  item_id: salami.id
)

coco_milk_fridge = Item.create(
  name: "Coconut Milk (fridge)",
  to_get: false
)
coco_milk_fridge.locations << Location.create(
  store_id: sprouts.id,
  zone_id: dairy.id,
  item_id: coco_milk_fridge.id
)
coco_milk_fridge.locations << Location.create(
  store_id: tj.id,
  zone_id: dairy.id,
  item_id: coco_milk_fridge.id
)

coco_milk_can = Item.create(
  name: "Coconut Milk (can)",
  to_get: false
)
coco_milk_can.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: coco_milk_can.id
)
coco_milk_can.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: coco_milk_can.id
)

almond_butter = Item.create(
  name: "Almond butter",
  to_get: false
)
almond_butter.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: almond_butter.id
)
almond_butter.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: almond_butter.id
)

cocoa_nibs = Item.create(
  name: "Cocoa nibs",
  to_get: false
)
cocoa_nibs.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: cocoa_nibs.id
)
cocoa_nibs.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: cocoa_nibs.id
)

coco_shredded = Item.create(
  name: "Coco shredded",
  to_get: false
)
coco_shredded.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: coco_shredded.id
)
coco_shredded.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: coco_shredded.id
)

chia_seed = Item.create(
  name: "Chia seeds",
  to_get: false
)
chia_seed.locations << Location.create(
  store_id: sprouts.id,
  zone_id: bulk.id,
  item_id: chia_seed.id
)
chia_seed.locations << Location.create(
  store_id: tj.id,
  zone_id: veggie.id,
  item_id: chia_seed.id
)

butter = Item.create(
  name: "Butter",
  to_get: false
)
butter.locations << Location.create(
  store_id: sprouts.id,
  zone_id: dairy.id,
  item_id: butter.id
)
butter.locations << Location.create(
  store_id: tj.id,
  zone_id: dairy.id,
  item_id: butter.id
)

ground_beef = Item.create(
  name: "Ground Beef",
  to_get: false
)
ground_beef.locations << Location.create(
  store_id: sprouts.id,
  zone_id: meat.id,
  item_id: ground_beef.id
)
ground_beef.locations << Location.create(
  store_id: tj.id,
  zone_id: meat.id,
  item_id: ground_beef.id
)

shrimp = Item.create(
  name: "Shrimp",
  to_get: false
)
shrimp.locations << Location.create(
  store_id: sprouts.id,
  zone_id: meat.id,
  item_id: shrimp.id
)
shrimp.locations << Location.create(
  store_id: specialty.id,
  zone_id: meat.id,
  item_id: shrimp.id
)

chicken = Item.create(
  name: "Chicken",
  to_get: false
)
chicken.locations << Location.create(
  store_id: sprouts.id,
  zone_id: meat.id,
  item_id: chicken.id
)
chicken.locations << Location.create(
  store_id: tj.id,
  zone_id: meat.id,
  item_id: chicken.id
)

bacon = Item.create(
  name: "Bacon",
  to_get: false
)
bacon.locations << Location.create(
  store_id: sprouts.id,
  zone_id: meat.id,
  item_id: bacon.id
)
bacon.locations << Location.create(
  store_id: tj.id,
  zone_id: meat.id,
  item_id: bacon.id
)

rice = Item.create(
  name: "Rice",
  to_get: false
)
rice.locations << Location.create(
  store_id: sprouts.id,
  zone_id: bulk.id,
  item_id: rice.id
)
rice.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: rice.id
)

quinoa = Item.create(
  name: "Quinoa",
  to_get: false
)
quinoa.locations << Location.create(
  store_id: sprouts.id,
  zone_id: bulk.id,
  item_id: quinoa.id
)
quinoa.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: quinoa.id
)
millet = Item.create(
  name: "Millet",
  to_get: false
)
millet.locations << Location.create(
  store_id: sprouts.id,
  zone_id: bulk.id,
  item_id: millet.id
)
millet.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: millet.id
)

amaranth = Item.create(
  name: "Amaranth",
  to_get: false
)
amaranth.locations << Location.create(
  store_id: sprouts.id,
  zone_id: bulk.id,
  item_id: amaranth.id
)
amaranth.locations << Location.create(
  store_id: specialty.id,
  zone_id: no_aisle.id,
  item_id: amaranth.id
)

sourdough = Item.create(
  name: "Sourdough",
  to_get: false
)
sourdough.locations << Location.create(
  store_id: sprouts.id,
  zone_id: bread.id,
  item_id: sourdough.id
)
sourdough.locations << Location.create(
  store_id: tj.id,
  zone_id: bread.id,
  item_id: sourdough.id
)

curry_paste = Item.create(
  name: "Curry paste",
  to_get: false
)
curry_paste.locations << Location.create(
  store_id: specialty.id,
  zone_id: no_aisle.id,
  item_id: curry_paste.id
)

gin = Item.create(
  name: "Gin",
  to_get: false
)
gin.locations << Location.create(
  store_id: tj.id,
  zone_id: booze.id,
  item_id: gin.id
)

vermouth = Item.create(
  name: "Vermouth",
  to_get: false
)
vermouth.locations << Location.create(
  store_id: tj.id,
  zone_id: booze.id,
  item_id: vermouth.id
)
sardines = Item.create(
  name: "Sardines",
  to_get: false
)
sardines.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: sardines.id
)
sardines.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: sardines.id
)

crackers = Item.create(
  name: "Crackers",
  to_get: false
)
crackers.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: crackers.id
)
crackers.locations << Location.create(
  store_id: tj.id,
  zone_id: frozen.id,
  item_id: crackers.id
)

coconut_oil = Item.create(
  name: "Coconut oil",
  to_get: false
)
coconut_oil.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: coconut_oil.id
)
coconut_oil.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: coconut_oil.id
)

olive_oil = Item.create(
  name: "Olive oil",
  to_get: false
)
olive_oil.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: olive_oil.id
)
olive_oil.locations << Location.create(
  store_id: tj.id,
  zone_id: mid.id,
  item_id: olive_oil.id
)

mct_oil = Item.create(
  name: "MCT Oil",
  to_get: false
)
mct_oil.locations << Location.create(
  store_id: specialty.id,
  zone_id: no_aisle.id,
  item_id: mct_oil.id
)

acv = Item.create(
  name: "Apple cider vinegar",
  to_get: false
)
acv.locations << Location.create(
  store_id: sprouts.id,
  zone_id: mid.id,
  item_id: acv.id
)

pesto = Item.create(
  name: "Pesto",
  to_get: false
)
pesto.locations << Location.create(
  store_id: tj.id,
  zone_id: dairy.id,
  item_id: pesto.id
)
