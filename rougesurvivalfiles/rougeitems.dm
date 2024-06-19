/datum/crafting_recipe/roguetown/riddleofsteel
	name = "Solve The Riddle"
	result = /obj/item/riddleofsteel
	reqs = list(/obj/item/clothing/suit/roguetown/armor/gambeson = 2,
	/obj/item/roguestatue/gold = 4, /obj/item/clothing/suit/roguetown/armor/leather/studded = 1)
	time = 2 SECONDS
	verbage = "...."
	craftsound = null
	skillcraft = null
/*
/datum/crafting_recipe/roguetown/turfs/dighole
	name = "Dig A Hole"
	result = /turf/open/transparent/openspace
	time = 9 SECONDS
	verbage = "diggy"
	craftsound = null
	skillcraft = null


/datum/crafting_recipe/roguetown/turfs/dighole/TurfCheck(mob/user, turf/T)
	var/turf/bottom_turf = get_step_multiz(get_turf(T), DOWN)
	if(!isopenturf(bottom_turf))
		qdel(bottom_turf)
		return TRUE

*/
