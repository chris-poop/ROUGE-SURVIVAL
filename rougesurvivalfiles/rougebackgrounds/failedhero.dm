/datum/advclass/failedhero
	name = "Failed Hero"
	tutorial = "You tried helping someone, and it went bad. You thought you could change the world, but all you did was hurt the people you loved. But not here. Not this time. I won't let it happen again. +5 Constitution -3 Fortune"
	allowed_sexes = list("male", "female")
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Argonian",
		"Dark Elf",
		"Aasimar",
		"Half Orc"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/failedhero
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)

/datum/outfit/job/roguetown/adventurer/failedhero/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/roguetown/helmet/heavy/knight
	pants = /obj/item/clothing/under/roguetown/tights/random
	armor = /obj/item/clothing/suit/roguetown/shirt/shortshirt/random
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/random
	shoes = /obj/item/clothing/shoes/roguetown/boots/leather
	belt = /obj/item/storage/belt/rogue/leather
	neck = /obj/item/storage/belt/rogue/pouch
	beltl = /obj/item/rogueweapon/pick
	beltr = /obj/item/rogueweapon/huntingknife
	backl = /obj/item/storage/backpack/rogue/backpack
	backr = /obj/item/rogueweapon/stoneaxe
	backpack_contents = list(/obj/item/flint = 1,/obj/item/seeds/wheat=1,/obj/item/seeds/apple=1,/obj/item/rogueore/coal=1,/obj/item/rogueore/iron=1,/obj/item/rogueweapon/tongs=1,/obj/item/rogueweapon/hammer=1,/obj/item/flashlight/flare/torch/lantern=1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/engineering, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/blacksmithing, 1, TRUE)
		H.change_stat("constitution", 5)
		H.change_stat("fortune", -3)
		H.change_stat("strength", 2)
