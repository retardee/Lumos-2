// contents:
// Fish tools + Aquaculture Crate
// Fishing rods
// Fish boxes

// Fish tools + Aquaculture Crate //

/obj/item/fish_tool
	name = "fish tool"
	desc = "parent fish tool, do not use"
	icon = 'modular_lumos/icons/obj/fishing/fish_items.dmi'
	w_class = WEIGHT_CLASS_SMALL
	custom_materials = list(/datum/material/iron = 200)

/obj/item/fish_tool/brush
	name = "fish tank brush"
	desc = "A scrubber for removing algae from fish tank siding."
	icon_state = "brush"

/obj/item/fish_tool/clippers
	name = "fish tank clippers"
	desc = "A pair of sheers for trimming tank-grown seaweed."
	icon_state = "clipper"
	hitsound = 'sound/weapons/bladeslice.ogg'
	sharpness = SHARP_EDGED
	tool_behaviour = TOOL_SCALPEL
	toolspeed = 4

/obj/item/fish_tool/egg_killer
	name = "egg neutralizer"
	desc = "A specialized tool designed to euthanize fish eggs for consumption."
	icon_state = "egg_scoop"

/obj/item/fish_tool/analyzer
	name = "fish analyzer"
	desc = "A little gadget designed to catalog statistical data of fish in a tank."
	icon_state = "fish_analy"
	custom_materials = list(/datum/material/iron = 200, /datum/material/glass = 50)

/obj/item/fish_tool/fish_food
	name = "fish food"
	desc = "A little canister of flaked fish food. Gives your fish the nutriment they need."
	icon_state = "fish_food"
	var/food_left = 100

/obj/item/fish_tool/fish_food/huge
	name = "huge fish food"
	desc = "Sometimes, you just need a little more fish food."
	icon_state = "fish_food_huge"
	w_class = WEIGHT_CLASS_NORMAL
	custom_materials = list(/datum/material/iron = 400)
	food_left = 300

/obj/item/paper/fluff/stations/chef/aquaculture
	name = "aquaculture manual"
	info = {"
		<center>
			<b><i>Aquaculture MANUAL</i></b><br>
			--------------------<br>
			Howdy fishers! This guide here will outline how you can farm fish on your station!<br>
			First of all, you'll need a fish tank. Take ten metal sheets and build a fish tank frame, then add five glass panes!<br>
			--------------------<br>
			Any fish farmer worth their space salt has their four basic tools:<br>
			1) Fish Analyzer - Used on fish tanks or the fish to analyze their health, hunger, age, etc.<br>
			2) Fish Tank Brush - Used to clean the fish tank. Dirty tanks hurt fish!<br>
			3) Fish Tank Clippers - Used to trim seaweed growing in tanks, which can be used for some recipes.<br>
			4) Fish Egg Neutralizer - Used to euthanize fish eggs so you can use them for food.<br>
			All basic fishing tools can be found at your station's Service protolathe.<br>
			--------------------<br>
			Getting started!<br>
			In this crate, there should be some basic salmon fish boxes. They should have two each.<br>
			Place the male and female in the tank and let them do their thing. Remember to feed them and clean the tank!<br>
			Over time, they will age and produce less eggs until they die. It's better to cull them when they're old to keep production continous.<br>
			--------------------<br>
			As for eggs:<br>
			Fish eggs, if not euthanized, will hatch as young adults after two minutes.<br>
			Be sure to check out sushi recipes with roe! Some Lesser Space Carp caviar is divine!<br>
			<br>
			wishing you luck,<br>
			<i>Charles F. Hardong</i>
			"}

/obj/structure/closet/crate/wooden/aquaculture
	name = "aquaculture crate"
	desc = "A crate containing starter materials for aquaculture."

/obj/structure/closet/crate/wooden/aquaculture/PopulateContents()
	. = ..()
	new /obj/item/fish_tool/fish_food(src)
	for(var/i in 1 to 2)
		new /obj/item/fish_box/salmon(src)
	var/obj/item/stack/sheet/metal/metal = new /obj/item/stack/sheet/metal(src)
	metal.amount = 20
	var/obj/item/stack/sheet/glass/glass = new /obj/item/stack/sheet/glass(src)
	glass.amount = 10
	new /obj/item/paper/fluff/stations/chef/aquaculture(src)

// Fishing Rods //

/obj/item/fish_tool/fishing_rod
	name = "fishing rod"
	desc = "Your average fishing rod. Used for catching fish (or similar creatures) from bodies of water."
	icon_state = "norm_rod"

	/// The probability of catching a fish with the rod
	var/fishing_chance = 50

	var/in_use = FALSE

/obj/item/fish_tool/fishing_rod/afterattack(atom/target, mob/user, proximity_flag, click_parameters)
	. = ..()
	if(!proximity_flag)
		return
	if(in_use)
		to_chat(user, "<span class='warning'>You are already fishing!</span>")
		return
	in_use = TRUE
	if(istype(target, /turf/open/water))
		if(!do_after(user, 10 SECONDS, target = target))
			in_use = FALSE
			return
		if(!prob(fishing_chance))
			in_use = FALSE
			return
		var/turf/open/water/W = target
		var/chosen_fish = pickweight(W.fishing_loot)
		new chosen_fish(get_turf(target))
		in_use = FALSE
		return
	in_use = FALSE

/obj/item/fish_tool/fishing_rod/makeshift
	name = "makeshift fishing rod"
	desc = "A haphazardly constructed fishing rod. Not very effective, but easy to produce."
	icon_state = "wire_rod"

	fishing_chance = 30

/obj/item/fish_tool/fishing_rod/primal
	name = "primal fishing rod"
	desc = "A primitive fishing rod. Works well enough."
	icon_state = "prim_rod"

	fishing_chance = 50

/obj/item/fish_tool/fishing_rod/advanced
	name = "advanced fishing rod"
	desc = "Women want me, fish fear me."
	icon_state = "adv_rod"

	fishing_chance = 80

/obj/item/fish_tool/fishing_rod/master_baiter // For ruins, rare drops, etc. - Never for crafting.
	name = "fishing god rod"
	desc = "Women fear me, fish fear me, men turn their eyes away from me as I walk... No beast dare make a sound in my presence, I am alone on this barren earth."
	icon_state = "god_rod"

	fishing_chance = 100

// Fish Boxes //

// NOTE: Only common fish should have boxes, not planet-specific or exotic fish (outside of the Exotic Fish Crate contents)

/obj/item/fish_box
	name = "fish box"
	icon = 'modular_lumos/icons/obj/fishing/fish_items.dmi'
	icon_state = "box"
	desc = "A box that stores fish. It has a breeding pair inside to get your aquaculture farm tanks started."

	w_class = WEIGHT_CLASS_SMALL

	// What's inside the box?
	var/obj/item/fish/inside_fish

/obj/item/fish_box/attack_self(mob/user)
	if(inside_fish)
		for(var/i in 1 to 2)
			var/obj/item/fish/f = new inside_fish(get_turf(user))
			if(i == 1) // This will need to get changed sooner or later, makes the box have a set male and female in it.
				f.sex = MALE_FISH
			else
				f.sex = FEMALE_FISH
		qdel(src)

/obj/item/fish_box/salmon
	name = "salmon box"
	icon_state = "box_salmon"
	inside_fish = /obj/item/fish/salmon

/obj/item/fish_box/shrimp
	name = "shrimp box"
	icon_state = "box_shrimp"
	inside_fish = /obj/item/fish/shrimp

/obj/item/fish_box/lobster
	name = "lobster box"
	icon_state = "box_lobster"
	inside_fish = /obj/item/fish/lobster

/obj/item/fish_box/catfish
	name = "catfish box"
	icon_state = "box_catfish"
	inside_fish = /obj/item/fish/catfish

/obj/item/fish_box/minicarp
	name = "lesser carp box"
	icon_state = "box_carp"
	inside_fish = /obj/item/fish/minicarp

/obj/item/fish_box/devil
	name = "sea devil box"
	icon_state = "box_devil"
	inside_fish = /obj/item/fish/seadevil
