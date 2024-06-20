//genstuff
/obj/effect/landmark/mapGenerator/rogue/timidforest
	mapGeneratorType = /datum/mapGenerator/timidforest
	endTurfX = 255
	endTurfY = 400
	startTurfX = 1
	startTurfY = 1


/datum/mapGenerator/timidforest
	modules = list(/datum/mapGeneratorModule/ambushing,/datum/mapGeneratorModule/timidforestgrassturf,/datum/mapGeneratorModule/timidforest,/datum/mapGeneratorModule/timidforestroad,/datum/mapGeneratorModule/timidforestgrass)


/datum/mapGeneratorModule/timidforest
	clusterCheckFlags = CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/rogue/dirt)
	excluded_turfs = list(/turf/open/floor/rogue/dirt/road)
	spawnableAtoms = list(/obj/structure/flora/newtree = 40,
							/obj/structure/flora/roguegrass/bush = 25,
							/obj/structure/flora/roguegrass = 30,
							/obj/structure/flora/roguegrass/maneater = 13,
							/obj/item/natural/stone = 23,
							/obj/item/natural/rock = 6,
							/obj/item/grown/log/tree/stick = 16,
							/obj/structure/flora/roguetree/stump/log = 3,
							/obj/structure/flora/roguetree/stump = 4,
							/obj/structure/closet/dirthole/closed/loot=2,
							/obj/structure/flora/roguegrass/maneater/real=3)
	spawnableTurfs = list(/turf/open/water/cleanshallow=1)
	allowed_areas = list(/area/rogue/outdoors/woods)

/datum/mapGeneratorModule/timidforestroad
	clusterCheckFlags = CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/rogue/dirt/road)
	spawnableAtoms = list(/obj/item/natural/stone = 9,/obj/item/grown/log/tree/stick = 6)

/datum/mapGeneratorModule/timidforestgrassturf
	clusterCheckFlags = CLUSTER_CHECK_NONE
	allowed_turfs = list(/turf/open/floor/rogue/dirt)
	excluded_turfs = list(/turf/open/floor/rogue/dirt/road)
	spawnableTurfs = list(/turf/open/floor/rogue/grass = 60)
	allowed_areas = list(/area/rogue/outdoors/woods)

/datum/mapGeneratorModule/timidforestgrass
	clusterCheckFlags = CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/rogue/grass)
	excluded_turfs = list()
	allowed_areas = list(/area/rogue/outdoors/woods)
	spawnableAtoms = list(/obj/structure/flora/roguetree = 30,
							/obj/structure/flora/roguetree/wise=1,
							/obj/structure/flora/roguegrass/bush = 25,
							/obj/structure/flora/roguegrass = 44,
							/obj/structure/flora/roguegrass/maneater = 13,
							/obj/structure/flora/roguegrass/maneater/real=2,
							/obj/item/natural/stone = 6,
							/obj/item/natural/rock = 1,
							/obj/item/grown/log/tree/stick = 3,
							/obj/structure/flora/roguetree/stump/log = 3)






/obj/effect/landmark/mapGenerator/rogue/rougecave
	mapGeneratorType = /datum/mapGenerator/rougecave
	endTurfX = 255
	endTurfY = 400
	startTurfX = 1
	startTurfY = 1

/datum/mapGenerator/rougecave
	modules = list(/datum/mapGeneratorModule/rougecave,/datum/mapGeneratorModule/rougecavedirt,/datum/mapGeneratorModule/rougecavetilesgen)

/datum/mapGeneratorModule/rougecave
	clusterCheckFlags = CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/rogue/dirt/road,/turf/open/water,/turf/open/floor/rogue/volcanic,/turf/open/floor/rogue/naturalstone)
	spawnableAtoms = list(/obj/item/natural/stone = 19,/obj/structure/roguerock=5,/obj/item/natural/rock = 3, /obj/structure/glowshroom = 4)
	allowed_areas = list(/area/rogue/under/cave/spider,/area/rogue/indoors/cave,/area/rogue/under/cavewet,/area/rogue/under/cave,/area/rogue/under/cavelava)

/datum/mapGeneratorModule/rougecavedirt
	clusterCheckFlags = CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/rogue/dirt,/turf/open/floor/rogue/naturalstone)
	spawnableAtoms = list(/obj/structure/flora/rogueshroom=10,/obj/structure/roguerock=15,/obj/structure/flora/roguegrass = 15,/obj/structure/closet/dirthole/closed/loot=1,/obj/item/natural/stone = 24,/obj/item/natural/rock = 8, /obj/structure/glowshroom = 3)
	allowed_areas = list(/area/rogue/under/cave/spider,/area/rogue/indoors/cave,/area/rogue/under/cavewet,/area/rogue/under/cave,/area/rogue/under/cavelava)

/datum/mapGeneratorModule/rougecavetilesgen
	clusterCheckFlags = CLUSTER_CHECK_NONE
	allowed_turfs = list(/turf/open/floor/rogue/dirt,/turf/open/floor/rogue/naturalstone)
	excluded_turfs = list(/turf/open/floor/rogue/dirt/road)
	spawnableTurfs = list(/turf/open/floor/rogue/grass = 30,/turf/open/floor/rogue/naturalstone = 20)
	allowed_areas = list(/area/rogue/under/cavewet,/area/rogue/under/cave)

/obj/effect/landmark/mapGenerator/rogue/rougecave/rougelava
	mapGeneratorType = /datum/mapGenerator/rougecave/rougelava
	endTurfX = 255
	endTurfY = 400
	startTurfX = 1
	startTurfY = 1

/datum/mapGenerator/rougecave/rougelava
	modules = list(/datum/mapGeneratorModule/rougecavedirt/rougelava)

/datum/mapGeneratorModule/rougecavedirt/rougelava
	spawnableTurfs = list(/turf/open/lava=3,/turf/open/floor/rogue/dirt/road=10)
	spawnableAtoms = list(/obj/item/natural/stone = 19,/obj/structure/roguerock=4,/obj/item/natural/rock = 2, /obj/structure/glowshroom = 4)
	allowed_areas = list(/area/rogue/under/cavelava)
	allowed_turfs = list(/turf/open/floor/rogue/dirt/,/turf/open/floor/rogue/volcanic,/turf/open/floor/rogue/naturalstone)


/obj/effect/landmark/mapGenerator/rogue/rougecave/rougespider
	mapGeneratorType = /datum/mapGenerator/rougecave/rougespider
	endTurfX = 255
	endTurfY = 400
	startTurfX = 1
	startTurfY = 1

/datum/mapGenerator/rougecave/rougespider
	modules = list(/datum/mapGeneratorModule/rougecavespider,/datum/mapGeneratorModule/rougecave,/datum/mapGeneratorModule/rougecavedirt)

/datum/mapGeneratorModule/rougecavespider
	clusterCheckFlags = CLUSTER_CHECK_DIFFERENT_ATOMS
	allowed_turfs = list(/turf/open/floor/rogue/underworld/road)
	spawnableAtoms = list(/obj/structure/spider/stickyweb=10)
	allowed_areas = list(/area/rogue/under/cave/spider)

