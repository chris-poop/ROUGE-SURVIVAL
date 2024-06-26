/mob/living/simple_animal/hostile/tree
	name = "pine tree"
	desc = ""
	icon = 'icons/obj/flora/pinetrees.dmi'
	icon_state = "pine_1"
	icon_living = "pine_1"
	icon_dead = "pine_1"
	icon_gib = "pine_1"
	gender = NEUTER
	speak_chance = 0
	turns_per_move = 5
	response_help_continuous = "brushes"
	response_help_simple = "brush"
	response_disarm_continuous = "pushes"
	response_disarm_simple = "push"
	faction = list("hostile")
	speed = 1
	maxHealth = 250
	health = 250
	mob_size = MOB_SIZE_LARGE

	pixel_x = -16

	harm_intent_damage = 5
	melee_damage_lower = 8
	melee_damage_upper = 12
	attack_verb_continuous = "bites"
	attack_verb_simple = "bite"
	attack_sound = 'sound/blank.ogg'
	speak_emote = list("pines")
	emote_taunt = list("growls")
	taunt_chance = 20

	atmos_requirements = list("min_oxy" = 2, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 5
	minbodytemp = 0
	maxbodytemp = 1200

	deathmessage = "is hacked into pieces!"
	loot = list(/obj/item/stack/sheet/mineral/wood)
	gold_core_spawnable = HOSTILE_SPAWN
	del_on_death = 1

/mob/living/simple_animal/hostile/tree/Life()
	..()
	if(isopenturf(loc))
		var/turf/open/T = src.loc
		if(T.air && T.air.gases[/datum/gas/carbon_dioxide])
			var/co2 = T.air.gases[/datum/gas/carbon_dioxide][MOLES]
			if(co2 > 0)
				if(prob(25))
					var/amt = min(co2, 9)
					T.air.gases[/datum/gas/carbon_dioxide][MOLES] -= amt
					T.atmos_spawn_air("o2=[amt]")

/mob/living/simple_animal/hostile/tree/AttackingTarget()
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/C = target
		if(prob(15))
			C.Paralyze(60)
			C.visible_message(span_danger("\The [src] knocks down \the [C]!"), \
					span_danger("\The [src] knocks you down!"))

/mob/living/simple_animal/hostile/tree/festivus
	name = "festivus pole"
	desc = ""
	icon_state = "festivus_pole"
	icon_living = "festivus_pole"
	icon_dead = "festivus_pole"
	icon_gib = "festivus_pole"
	loot = list(/obj/item/stack/rods)
	speak_emote = list("polls")
	faction = list()
