//For custom items.

// Unless there's a digitigrade version make sure you add mutantrace_variation = NONE to all clothing/under and shoes - Pooj
// Digitigrade stuff is uniform_digi.dmi and digishoes.dmi in icons/mob

/obj/item/lighter/gold
	name = "\improper Engraved Zippo"
	desc = "A shiny and relatively expensive zippo lighter. There's a small etched in verse on the bottom that reads, 'No Gods, No Masters, Only Man.'"
	icon = 'icons/obj/custom.dmi'
	icon_state = "gold_zippo"
	item_state = "gold_zippo"
	w_class = WEIGHT_CLASS_TINY
	flags_1 = CONDUCT_1
	slot_flags = SLOT_BELT
	heat = 1500
	resistance_flags = FIRE_PROOF
	light_color = LIGHT_COLOR_FIRE

/obj/item/clothing/head/hardhat/reindeer/fluff
	name = "novelty reindeer hat"
	desc = "Some fake antlers and a very fake red nose - Sponsored by PWR Game(tm)"
	icon_state = "hardhat0_reindeer"
	item_state = "hardhat0_reindeer"
	hat_type = "reindeer"
	flags_inv = 0
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0, fire = 0, acid = 0)
	brightness_on = 0 //luminosity when on
	dynamic_hair_suffix = ""

/obj/item/clothing/head/santa/fluff
	name = "santa's hat"
	desc = "On the first day of christmas my employer gave to me! - From Vlad with Salad"
	icon_state = "santahatnorm"
	item_state = "that"
	dog_fashion = /datum/dog_fashion/head/santa

//Removed all of the space flags from this suit so it utilizes nothing special.
/obj/item/clothing/suit/space/santa/fluff
	name = "Santa's suit"
	desc = "Festive!"
	icon_state = "santa"
	item_state = "santa"
	slowdown = 0

/obj/item/clothing/mask/gas/stalker
	name = "S.T.A.L.K.E.R. mask"
	desc = "Smells like reactor four."
	icon = 'icons/obj/custom.dmi'
	item_state = "stalker"
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	icon_state = "stalker"

/obj/item/clothing/mask/gas/military
	name = "Military Gas Mask"
	desc = "A rare PMC gas mask, one of the very expensive kinds. The inside looks comfortable to wear for a while. The blood red eyes however seem to stare back at you. Creepy."
	icon = 'icons/obj/custom.dmi'
	item_state = "mgas"
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	icon_state = "mgas"

/obj/item/clothing/suit/puffydress
	name = "Puffy Dress"
	desc = "A formal puffy black and red Victorian dress."
	icon = 'icons/obj/custom.dmi'
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	icon_state = "puffydress"
	item_state = "puffydress"
	body_parts_covered = CHEST|GROIN|LEGS
	mutantrace_variation = NONE

/obj/item/clothing/head/paperhat
	name = "paperhat"
	desc = "A piece of paper folded into a neat little hat."
	icon_state = "paperhat"
	item_state = "paperhat"

/obj/item/clothing/under/custom/mimeoveralls
	name = "Mime's Overalls"
	icon = 'icons/obj/custom.dmi'
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	desc = "A less-than-traditional mime's attire, completed by a set of dorky-looking overalls."
	item_state = "moveralls"
	icon_state = "moveralls"
	mutantrace_variation = NONE

/obj/item/clothing/suit/kimono
	name = "Blue Kimono"
	desc = "A traditional kimono, this one is blue with purple flowers."
	icon_state = "kimono"
	item_state = "kimono"
	icon = 'icons/obj/custom.dmi'
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	mutantrace_variation = NONE

/obj/item/clothing/under/custom/mw2_russian_para
	name = "Russian Paratrooper Jumpsuit"
	desc = "A Russian made old paratrooper jumpsuit, has many pockets for easy storage of gear from a by gone era. As bulky as it looks, its shockingly light!"
	icon_state = "mw2_russian_para"
	item_state = "mw2_russian_para"
	icon = 'icons/obj/custom.dmi'
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	mutantrace_variation = NONE

/obj/item/clothing/under/custom/trendy_fit
	name = "Trendy Fitting Clothing"
	desc = "An outfit straight from the boredom of space, its the type of thing only someone trying to entertain themselves on the way to their next destination would wear."
	icon_state = "trendy_fit"
	item_state = "trendy_fit"
	icon = 'icons/obj/custom.dmi'
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	mutantrace_variation = NONE

/obj/item/clothing/neck/necklace/onion
	name = "Onion Necklace"
	desc = "A string of onions sequenced together to form a necklace."
	icon = 'icons/obj/custom.dmi'
	icon_state = "onion"
	item_state = "onion"
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'

/obj/item/clothing/head/halo
	name = "transdimensional halo"
	desc = "An oddly shaped halo that magically hovers above the head."
	icon_state = "halo"
	item_state = "halo"
	icon = 'icons/mob/clothing/custom_w.dmi'
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	dynamic_hair_suffix = ""

/obj/item/clothing/suit/spacehoodie
	name = "space hoodie"
	desc = "You are not sure why this hoodie exists... but it does and it is comfortable."
	icon_state = "starhoodie"
	item_state = "starhoodie"
	icon = 'icons/obj/custom.dmi'
	mob_overlay_icon = 'icons/mob/clothing/custom_w.dmi'
	mutantrace_variation = NONE

/obj/item/coin/red
	name = "red pokerchip"
	desc = "A red pokerchip."
	icon_state = "c_red"
	item_state = "c_red"
	icon = 'icons/obj/custom.dmi'

/obj/item/coin/blue
	name = "blue pokerchip"
	desc = "A blue pokerchip."
	icon_state = "c_nlue"
	item_state = "c_blue"
	icon = 'icons/obj/custom.dmi'

/obj/item/coin/green
	name = "green pokerchip"
	desc = "A green pokerchip."
	icon_state = "c_green"
	item_state = "c_green"
	icon = 'icons/obj/custom.dmi'

/obj/item/coin/black
	name = "black pokerchip"
	desc = "A black pokerchip."
	icon_state = "c_black"
	item_state = "c_black"
	icon = 'icons/obj/custom.dmi'

/obj/item/storage/box/pokerchips
	name = "tray of poker chips"
	desc = "A tray of green, red, blue, and black poker chips."
	icon_state = "c_holder"
	icon = 'icons/obj/custom.dmi'
	illustration=null

/obj/item/storage/box/pokerchips/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/coin/red(src)
	for(var/i in 1 to 10)
		new /obj/item/coin/blue(src)
	for(var/i in 1 to 15)
		new /obj/item/coin/black(src)
	for(var/i in 1 to 20)
		new /obj/item/coin/green(src)

