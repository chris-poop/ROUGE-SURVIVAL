/datum/faith/romancatholic
	name = "Roman Catholic"
	desc = "The Last Bits of The Church That Remains, Just Whispers, Tales of Christ Giving Freedom To Those Stuck In Hell\n\
		Perhaps Faith in God is The Key to ESCAPE\n\
		Seeing Itself as The Only True Faith, Christians Rarely Trust Pagans.\n\
		May The Glory of Christ Protect Us, Jesus Of Nazareth, Save Our Souls, Amen"
	worshippers = "Hopeless People Looking For A Way Out"
	godhead = /datum/patron/romancatholic

/datum/patron/romancatholic
	name = "The Lord"
	domain = "The Father, The Son, And The Holy Spirit"
	desc = "The Creator of Everything, The Way"
	worshippers = "True Believers, Faithless Heathens"
	mob_traits = list(TRAIT_ROMANCATHOLIC)
	associated_faith = /datum/faith/romancatholic
	confess_lines = list(
		"THERE IS ONLY ONE GOD!",
		"THE NINE ARE FALSE GODS!",
		"JESUS IS MY SHEPHERD!",


	)

/*
if(race = /datum/species/human/northern)
	if(HAS_TRAIT(C, TRAIT_ROMANCATHOLIC))
		if(H.mind)
		H.change_stat("constitution", 2)
		H.change_stat("perception", -1)
*/
