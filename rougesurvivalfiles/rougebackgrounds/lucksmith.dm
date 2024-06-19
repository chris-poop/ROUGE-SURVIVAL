/datum/advclass/lucksmith
	name = "Luck-Smith"
	tutorial = "Your whole life you wanted to make a lucky coin and eat it, a few days ago you did, and you still haven't recovered. +5 Fortune -2 Endurance"
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
	outfit = /datum/outfit/job/roguetown/adventurer/lucksmith
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)

/datum/outfit/job/roguetown/adventurer/lucksmith/pre_equip(mob/living/carbon/human/H)
	..()
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
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, pick(1,2,3,4), TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, pick(1,2,3,4,5,6), TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, pick(1,2,3,4,5,6), TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/engineering, pick(1,2,3,4,5,6), TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, pick(1,2,3,4,5,6), TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, pick(1,2), TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, pick(1,2,3,4,5,6), TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, pick(1,2,3,4,5,6), TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/blacksmithing, 1, TRUE)
		H.change_stat("fortune", 5)
		H.change_stat("endurance", -2)
