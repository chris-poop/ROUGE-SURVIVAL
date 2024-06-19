/datum/advclass/dancer
	name = "Dancer"
	tutorial = "You're no Stranger to dancing, you learned the rules young, and gave a full commitment to the cause. Your former master told you to never give up, and you won't turn around and desert him. +5 Speed -2 Strength"
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
	outfit = /datum/outfit/job/roguetown/adventurer/dancer
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)

/datum/outfit/job/roguetown/adventurer/dancer/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/trou/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt/jester
	shoes = /obj/item/clothing/shoes/roguetown/shalal
	belt = /obj/item/storage/belt/rogue/leather/plaquegold
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
		H.change_stat("speed", 5)
		H.change_stat("strength", -2)
