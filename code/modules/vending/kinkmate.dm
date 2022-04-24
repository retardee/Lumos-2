/obj/machinery/vending/kink
	name = "KinkMate"
	desc = "A vending machine for all your unmentionable desires."
	icon_state = "kink"
	product_slogans = "Kinky!;Sexy!;Check me out, big boy!"
	vend_reply = "Have fun, you shameless pervert!"
	products = list(
				/obj/item/clothing/head/maid = 1,
				/obj/item/clothing/under/costume/maid = 1,
				/obj/item/clothing/under/rank/civilian/janitor/maid = 1,
				/obj/item/clothing/gloves/evening = 1,
				/obj/item/clothing/under/misc/stripper = 1,
				/obj/item/clothing/under/misc/stripper/green = 1,
				/obj/item/clothing/under/dress/corset = 1,
				/obj/item/clothing/under/misc/gear_harness = 1,
				/obj/item/clothing/under/misc/poly_bottomless = 1,
				/obj/item/clothing/under/misc/poly_tanktop = 3,
				/obj/item/clothing/under/misc/poly_tanktop/female = 3,
				/obj/item/clothing/under/shorts/polychromic/pantsu = 3,
				/obj/item/clothing/neck/petcollar/choker = 3,
				/obj/item/clothing/neck/petcollar/leather = 3,
				/obj/item/clothing/neck/necklace/cowbell = 3,
				/obj/item/electropack/shockcollar = 1,
				/obj/item/assembly/signaler = 1,
				/obj/item/restraints/handcuffs/fake/kinky = 3,
				/obj/item/clothing/glasses/sunglasses/blindfold = 3,
				/obj/item/clothing/mask/muzzle = 3,
				/obj/item/storage/daki = 3,
				/obj/item/dildo/custom = 5,
				/obj/item/storage/pill_bottle/penis_enlargement = 3,
				/obj/item/storage/pill_bottle/breast_enlargement = 3,
				/obj/item/reagent_containers/glass/bottle/crocin = 5,
				/obj/item/reagent_containers/glass/bottle/camphor = 5,
				)
	contraband = list(
				/obj/item/clothing/neck/petcollar/locked = 3,
				/obj/item/key/collar = 3,
				/obj/item/clothing/head/kitty = 1,
				/obj/item/clothing/head/rabbitears = 1,
				/obj/item/clothing/under/misc/keyholesweater = 1,
				/obj/item/clothing/under/misc/stripper/mankini = 1,
				/obj/item/clothing/under/costume/jabroni = 1,
				/obj/item/clothing/gloves/evening/black = 1,
				/obj/item/dildo/flared/huge = 1
				)
	premium = list(
				/obj/item/reagent_containers/glass/bottle/hexacrocin = 5,
				/obj/item/clothing/under/pants/chaps = 1
				)
	refill_canister = /obj/item/vending_refill/kink
	default_price = PRICE_CHEAP
	extra_price = PRICE_BELOW_NORMAL
	payment_department = NO_FREEBIES

/obj/item/vending_refill/kink
	machine_name 	= "KinkMate"
	icon_state 		= "refill_kink"
