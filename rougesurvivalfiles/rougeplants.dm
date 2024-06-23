/obj/item/seeds/hideplant
	name = "skin seeds"
	desc = "Looks alive"
	icon_state = "seed"
	species = "weed"
	plantname = "Hide Plant"
	product = /obj/item/natural/hide
	production = 1
	yield = 2
	potency = 1


/datum/crafting_recipe/roguetown/hideplantseeds
	name = "Create Hide Seeds"
	result = /obj/item/seeds/hideplant
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/apple = 15,
	/obj/item/natural/chaff/wheat = 15)
	time = 2 SECONDS
	verbage = "Tear My Skin to"
	craftsound = null
	skillcraft = null


/datum/crafting_recipe/roguetown/oatseeds
	name = "Create Oat Seeds"
	result = /obj/item/seeds/wheat/oat
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/apple = 5,
	/obj/item/natural/chaff/wheat = 5)
	time = 2 SECONDS
	verbage = "Oatificate, to"
	craftsound = null
	skillcraft = null


/obj/item/seeds/ironplant
	name = "Iron Pellets"
	desc = "Feels Heavy"
	icon_state = "seed"
	species = "weed"
	plantname = "Iron Stalks"
	product = /obj/item/rogueore/iron
	production = 1
	yield = 2
	potency = 1


/datum/crafting_recipe/roguetown/ironplantseeds
	name = "Pulverize, Form Iron"
	result = /obj/item/seeds/ironplant
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/apple = 40,
	/obj/item/natural/chaff/wheat = 40)
	time = 2 SECONDS
	verbage = "Smash Together The Pellets to"
	craftsound = null
	skillcraft = null

/obj/item/seeds/treeseeds
	name = "Tree Seeds"
	desc = "You can hear the Tiny Seeds screaming, they beg to be buried"
	icon_state = "seed"
	species = "weed"
	plantname = "Tiny Tree"
	product = /obj/item/grown/log/tree/small
	production = 1
	yield = 2
	potency = 1


/datum/crafting_recipe/roguetown/treeseeds
	name = "Coax out A Tree Midget"
	result = /obj/item/seeds/treeseeds
	reqs = list(/obj/item/natural/chaff/wheat = 20, /obj/item/grown/log/tree/stick = 1)
	time = 2 SECONDS
	verbage = "Sing to"
	craftsound = null
	skillcraft = null


/obj/structure/flora/roguegrass/deadgrass
	name = "Dead Grass"
	desc = "Green, soft and Totally Dead."
	icon = 'icons/roguetown/misc/foliage.dmi'
	icon_state = "deadgrass"
