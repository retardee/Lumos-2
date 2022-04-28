/obj/item/extinguisher
	/// Icon state when inside a tank holder
	var/tank_holder_icon_state = "holder_extinguisher"

/obj/item/extinguisher/ComponentInitialize()
	. = ..()
	if(tank_holder_icon_state)
		AddComponent(/datum/component/container_item/tank_holder, tank_holder_icon_state)

/obj/item/extinguisher/advanced
	tank_holder_icon_state = "holder_foam_extinguisher"

/obj/item/extinguisher/bluespace
	name = "bluespace fire extinguisher"
	desc = "An advanced fire extinguisher with extended capacity and range."
	icon = 'modular_lumos/icons/obj/items_and_weapons.dmi'
	icon_state = "bluespace_extinguisher0"
	item_state = "bluespace_extinguisher"
	sprite_name = "bluespace_extinguisher"
	lefthand_file = 'modular_lumos/icons/mob/inhands/items_lefthand.dmi'
	righthand_file = 'modular_lumos/icons/mob/inhands/items_righthand.dmi'
	hitsound = 'sound/weapons/smash.ogg'
	flags_1 = CONDUCT_1
	throwforce = 10
	w_class = WEIGHT_CLASS_NORMAL
	throw_speed = 2
	throw_range = 6
	force = 10
	custom_materials = list(/datum/material/iron = 400)
	attack_verb = list("slammed", "whacked", "bashed", "thunked", "battered", "bludgeoned", "thrashed")
	dog_fashion = null
	resistance_flags = FIRE_PROOF
	max_water = 300
	power = 7 //Maximum distance launched water will travel
	precision = TRUE //By default, turfs picked from a spray are random, set to 1 to make it always have at least one water effect per row
	cooling_power = 3 //Sets the cooling_temperature of the water reagent datum inside of the extinguisher when it is refilled
