/// What you kind of fish you can catch from the water

/turf/open/water // since this lavaland's normal
	var/list/fishing_loot = list(
			/obj/item/fish/lobster/rock = 30,
			/obj/item/fish/asteroid_worm = 10,
			/obj/item/fish/lavacrab = 30,
			/obj/item/fish/lavafish = 30)

/turf/open/water/airless
	initial_gas_mix = AIRLESS_ATMOS
	baseturfs = /turf/open/water/airless

/turf/open/water/decorative
	fishing_loot = null

/turf/open/water/seawater // For TheBeach away "mission"
	name = "sea water"
	desc = "Deep blue water absolutely brimming with life."
	icon = 'modular_lumos/icons/misc/beach.dmi'
	icon_state = "seadeep"
	baseturfs = /turf/open/water/seawater

	fishing_loot = list(
			/obj/item/fish/shark = 10,
			/obj/item/fish/shrimp = 25,
			/obj/item/fish/lobster = 25,
			/obj/item/fish/lobster/rock = 10,
			/obj/item/fish/salmon = 30)

/turf/open/water/asteroid
	name = "asteroid pond"
	desc = "Shallow water held onto asteroids, often used by astroforms and extremophiles in their egg and larval stages."
	baseturfs = /turf/open/floor/plating/asteroid

	fishing_loot = list(
			/obj/item/fish/space_eel = 25,
			/obj/item/fish/asteroid_worm = 35,
			/obj/item/fish/minicarp = 35,
			/obj/item/fish/seadevil = 5)

/turf/open/water/asteroid/airless
	initial_gas_mix = AIRLESS_ATMOS
	baseturfs = /turf/open/floor/plating/asteroid/airless

// Yes I'm putting this here cause we can't touch maincode and I fucking hate too many folders.
/turf/open/indestructible/binary/deepwater
	name = "deep ocean water"
	desc = "You're definitely not gonna swim in this."
	icon = 'modular_lumos/icons/misc/beach.dmi'
	icon_state = "seadeep"
	density = 1
