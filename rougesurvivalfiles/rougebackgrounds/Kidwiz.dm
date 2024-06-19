/datum/advclass/kidwiz
	name = "Kid-Wiz"
	tutorial = "When you were a kid, you always knew how to read books faster then retards, you grew up anti-social, but you were always smarter then them, so who cares? +5 Intelligence, -3 Perception"
	allowed_sexes = list("male", "female")
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Argonian",
		"Dark Elf",
		"Aasimar"
	)
	outfit = /datum/outfit/job/roguetown/adventurer/kidwiz
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)

/datum/outfit/job/roguetown/adventurer/kidwiz/pre_equip(mob/living/carbon/human/H)
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
		H.mind.adjust_skillrank(/datum/skill/magic/arcane, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/traps, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/engineering, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/blacksmithing, 1, TRUE)
		H.change_stat("intelligence", 5)
		H.change_stat("perception", -3)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/blesscrop)


