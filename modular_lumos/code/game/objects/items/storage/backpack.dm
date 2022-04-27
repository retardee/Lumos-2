/obj/item/storage/backpack/case
	name = "compartment case"
	desc = "A large compartment case for holding lots of things."
	icon = 'modular_lumos/icons/obj/storage.dmi'
	icon_state = "infiltrator_case_basic"
	item_state = "infiltrator_case_basic"
	slot_flags = null

/obj/item/storage/backpack/case/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.max_combined_w_class = 25
	STR.max_w_class = WEIGHT_CLASS_NORMAL
	STR.max_items = 25

/obj/item/storage/backpack/case/security
	name = "secure compartment case"
	desc = "It's a case for people that wanna hurt people."
	icon_state = "infiltrator_case_security"
	item_state = "infiltrator_case_security"

/obj/item/storage/backpack/case/command
	name = "command compartment case"
	desc = "It's a special case made exclusively for Nanotrasen officers."
	icon_state = "infiltrator_case_command"
	item_state = "infiltrator_case_command"

/obj/item/storage/backpack/case/medical
	name = "medical compartment case"
	desc = "It's a case especially designed for keeping everything to save a fellow co-worker."
	icon_state = "infiltrator_case_medical"
	item_state = "infiltrator_case_medical"

/obj/item/storage/backpack/case/engineering
	name = "industrial compartment case"
	desc = "A large case for holding tools and supplies for large constructions."
	icon_state = "infiltrator_case_engineering"
	item_state = "infiltrator_case_engineering"

/obj/item/storage/backpack/case/mining
	name = "mining compartment case"
	desc = "A large case for holding both loot and equipment."
	icon_state = "infiltrator_case_mining"
	item_state = "infiltrator_case_mining"

/obj/item/storage/backpack/case/science
	name = "science compartment case"
	desc = "A large case for holding science supplies."
	icon_state = "infiltrator_case_science"
	item_state = "infiltrator_case_science"

/obj/item/storage/backpack/case/cosmos
	name = "cosmos compartment case"
	desc = "A large compartment case for holding lots of things.\nThis one has been designed to look like space, neat."
	icon_state = "infiltrator_case_cosmos"
	item_state = "infiltrator_case_cosmos"

/obj/item/storage/backpack/duffelbag/sci
	name = "science duffel bag"
	desc = "A large duffel bag for holding extra science supplies."
	icon = 'modular_lumos/icons/obj/storage.dmi'
	mob_overlay_icon = 'modular_lumos/icons/mob/clothing/back.dmi'
	lefthand_file = 'modular_lumos/icons/mob/inhands/equipment/backpack_lefthand.dmi'
	righthand_file = 'modular_lumos/icons/mob/inhands/equipment/backpack_righthand.dmi'
	icon_state = "duffel-sci"
	item_state = "duffel-sci"

/obj/item/storage/backpack/duffelbag/sci/surgery
	name = "surgical duffel bag"
	desc = "A large duffel bag for holding extra science supplies - this one seems to be designed for holding surgical tools."

/obj/item/storage/backpack/duffelbag/sci/surgery/PopulateContents()
	new /obj/item/scalpel(src)
	new /obj/item/hemostat(src)
	new /obj/item/retractor(src)
	new /obj/item/circular_saw(src)
	new /obj/item/surgicaldrill(src)
	new /obj/item/cautery(src)
	new /obj/item/bonesetter(src)
	new /obj/item/surgical_drapes(src)
	new /obj/item/clothing/mask/surgical(src)
	new /obj/item/reagent_containers/medspray/sterilizine(src)
	new /obj/item/razor(src)

/obj/item/storage/backpack/duffelbag/sci/nanites
	name = "Nanite duffel bag"
	desc = "A large duffel bag for holding extra science supplies - this one seems to be designed for holding nanite tools."

/obj/item/storage/backpack/duffelbag/sci/nanites/PopulateContents()
	new /obj/item/nanite_remote(src)
	new /obj/item/nanite_remote(src)
	new /obj/item/nanite_scanner(src)
	new /obj/item/nanite_scanner(src)
	new /obj/item/storage/box/disks_nanite(src)
	new /obj/item/clothing/glasses/hud/diagnostic(src)
	new /obj/item/clothing/glasses/hud/diagnostic(src)

/obj/item/storage/backpack/duffelbag/sci/circuits
	name = "Circuit duffel bag"
	desc = "A large duffel bag for holding extra science supplies - this one seems to be designed for holding circuit tools."

/obj/item/storage/backpack/duffelbag/sci/circuits/PopulateContents()
	new /obj/item/integrated_electronics/analyzer(src)
	new /obj/item/integrated_electronics/wirer(src)
	new /obj/item/integrated_electronics/debugger(src)
	new /obj/item/stack/sheet/glass/fifty(src)
	new /obj/item/stack/sheet/metal/ten(src)
	new /obj/item/stock_parts/cell/high(src)
	new /obj/item/screwdriver(src)
	new /obj/item/multitool(src)

/obj/item/storage/backpack/duffelbag/sci/tools
	name = "Tools duffel bag"
	desc = "A large duffel bag for holding extra science supplies - this one seems to be designed for holding tools."

/obj/item/storage/backpack/duffelbag/sci/tools/PopulateContents()

	new /obj/item/wrench(src)
	new /obj/item/crowbar(src)
	new /obj/item/weldingtool(src)
	new /obj/item/multitool(src)
	new /obj/item/screwdriver(src)
	new /obj/item/wirecutters(src)
	new /obj/item/clothing/glasses/welding(src)
	new /obj/item/stock_parts/cell/high(src)
	new /obj/item/borg/upgrade/restart(src)
