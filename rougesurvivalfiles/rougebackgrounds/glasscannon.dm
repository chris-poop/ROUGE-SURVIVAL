/datum/advclass/glasscannon
	name = "Glass Cannon"
	tutorial = "You learned early in life how to throw a punch, but you never learned how to take one. +5 Strength, -3 Endurance"
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
	outfit = /datum/outfit/job/roguetown/adventurer/glasscannon
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)

/datum/outfit/job/roguetown/adventurer/glasscannon/pre_equip(mob/living/carbon/human/H)
	..()
	pants = /obj/item/clothing/under/roguetown/tights/sailor
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/red
	shoes = /obj/item/clothing/shoes/roguetown/ridingboots
	belt = /obj/item/storage/belt/rogue/leather/black
	neck = /obj/item/clothing/head/roguetown/paddedcap
	beltl = /obj/item/rogueweapon/pick
	beltr = /obj/item/rogueweapon/huntingknife
	backl = /obj/item/storage/backpack/rogue/backpack
	backr = /obj/item/rogueweapon/stoneaxe
	backpack_contents = list(/obj/item/flint = 1,/obj/item/seeds/wheat=1,/obj/item/seeds/apple=1,/obj/item/rogueore/coal=1,/obj/item/rogueore/iron=1,/obj/item/rogueweapon/tongs=1,/obj/item/rogueweapon/hammer=1,/obj/item/flashlight/flare/torch/lantern=1)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/engineering, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/blacksmithing, 1, TRUE)
		H.change_stat("strength", 5)
		H.change_stat("endurance", -3)
