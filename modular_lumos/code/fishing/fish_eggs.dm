
// Fish eggs //

/obj/item/fish_egg
	name = "fish egg"
	desc = "A fertilized fish egg waiting to hatch."
	icon = 'modular_lumos/icons/obj/fishing/fish.dmi'

	// Have these eggs been euthanized?
	var/killed = FALSE

	// When these eggs hatch, what does it spawn?
	var/obj/item/fish/fish_parent

/obj/item/fish_egg/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/fish_tool/egg_killer))
		visible_message("<span class='notice'>You euthanize the egg clutch, the life fading from it.</span>")
		new /obj/item/reagent_containers/food/snacks/fish_eggs(get_turf(src))
		qdel(src)
	else
		return ..()

/obj/item/fish_egg/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/hatch_egg), 2 MINUTES)

/obj/item/fish_egg/proc/hatch_egg()
	if(!fish_parent)
		return
	new fish_parent(get_turf(src))
	qdel(src)

/obj/item/fish_egg/salmon
	fish_parent = /obj/item/fish/salmon
	icon_state = "salmon_eggs"

/obj/item/fish_egg/salmon/steelhead
	fish_parent = /obj/item/fish/salmon/steelhead

/obj/item/fish_egg/lavafish
	fish_parent = /obj/item/fish/lavafish
	icon_state = "lava_eggs"

/obj/item/fish_egg/shrimp
	fish_parent = /obj/item/fish/shrimp
	icon_state = "shrimp_eggs"

/obj/item/fish_egg/lobster
	fish_parent = /obj/item/fish/lobster
	icon_state = "eggs_lobster"

/obj/item/fish_egg/lobster/rock
	fish_parent = /obj/item/fish/lobster/rock
	icon_state = "lava_eggs"

/obj/item/fish_egg/catfish
	fish_parent = /obj/item/fish/catfish
	icon_state = "catfish_eggs"

/obj/item/fish_egg/minicarp
	fish_parent = /obj/item/fish/minicarp
	icon_state = "eggs_tinycarp"

/obj/item/fish_egg/devil
	fish_parent = /obj/item/fish/seadevil
	icon_state = "eggs_devil"

/obj/item/fish_egg/shark
	fish_parent = /obj/item/fish/shark
	icon_state = "shark_eggs_new"

/obj/item/fish_egg/asteroid_worm
	fish_parent = /obj/item/fish/asteroid_worm
	icon_state = "worm_eggs"

/obj/item/fish_egg/space_eel
	fish_parent = /obj/item/fish/space_eel
	icon_state = "space_eel_eggs"

/obj/item/fish_egg/lavacrab
	fish_parent = /obj/item/fish/lavacrab
	icon_state = "lava_eggs"
