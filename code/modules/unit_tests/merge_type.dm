/datum/unit_test/merge_type/Run()
	var/list/blacklist = list(/obj/item/stack/sheet,
							  /obj/item/stack/sheet/mineral,
							  /obj/item/stack/ore,
							  /obj/item/stack/spacecash,
							//   /obj/item/stack/license_plates,
							  /obj/item/stack/tile/mineral,
							  /obj/item/stack/tile)

	var/list/paths = subtypesof(/obj/item/stack) - blacklist

	for(var/obj/item/stack/stackpath as anything in paths)
		if(initial(stackpath.is_cyborg))
			continue
		var/obj/item/stack/stack = new stackpath
		if(!stack.merge_type)
			Fail("([stack]) lacks set merge_type variable!")
