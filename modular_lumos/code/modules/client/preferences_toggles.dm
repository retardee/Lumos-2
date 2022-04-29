TOGGLE_CHECKBOX(/datum/verbs/menu/Settings/Sound, toggleeatingnoise)()
	set name = "Toggle Eating Noises"
	set category = "Preferences"
	set desc = "Hear Eating noises"
	usr.client.prefs.cit_toggles ^= EATING_NOISES
	usr.client.prefs.save_preferences()
	usr.stop_sound_channel(CHANNEL_PRED)
	to_chat(usr, "You will [(usr.client.prefs.cit_toggles & EATING_NOISES) ? "now" : "no longer"] hear eating noises.")
/datum/verbs/menu/Settings/Sound/toggleeatingnoise/Get_checked(client/C)
	return C.prefs.cit_toggles & EATING_NOISES


TOGGLE_CHECKBOX(/datum/verbs/menu/Settings/Sound, toggledigestionnoise)()
	set name = "Toggle Digestion Noises"
	set category = "Preferences"
	set desc = "Hear digestive noises"
	usr.client.prefs.cit_toggles ^= DIGESTION_NOISES
	usr.client.prefs.save_preferences()
	usr.stop_sound_channel(CHANNEL_DIGEST)
	to_chat(usr, "You will [(usr.client.prefs.cit_toggles & DIGESTION_NOISES) ? "now" : "no longer"] hear digestion noises.")
/datum/verbs/menu/Settings/Sound/toggledigestionnoise/Get_checked(client/C)
	return C.prefs.cit_toggles & DIGESTION_NOISES

TOGGLE_CHECKBOX(/datum/verbs/menu/Settings/Sound, togglehoundsleeper)()
	set name = "Toggle Voracious Hound Sleepers"
	set category = "Preferences"
	set desc = "Toggles Voracious MediHound Sleepers"
	usr.client.prefs.cit_toggles ^= MEDIHOUND_SLEEPER
	usr.client.prefs.save_preferences()
	if(usr.client.prefs.cit_toggles & MEDIHOUND_SLEEPER)
		to_chat(usr, "You have opted in for voracious medihound sleepers.")
	else
		to_chat(usr, "Medihound sleepers will no longer be voracious when you're involved.")
	SSblackbox.record_feedback("nested tally", "preferences_verb", 1, list("Toggle MediHound Sleeper", "[usr.client.prefs.cit_toggles & MEDIHOUND_SLEEPER ? "Enabled" : "Disabled"]")) //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!
/datum/verbs/menu/Settings/Sound/togglehoundsleeper/Get_checked(client/C)
	return C.prefs.cit_toggles & MEDIHOUND_SLEEPER

TOGGLE_CHECKBOX(/datum/verbs/menu/Settings, verb_consent)()
	set name = "Toggle Lewd Verbs"
	set category = "Preferences"
	set desc = "Allow Lewd Verbs"

	usr.client.prefs.toggles ^= VERB_CONSENT
	usr.client.prefs.save_preferences()
	to_chat(usr, "You [(usr.client.prefs.toggles & VERB_CONSENT) ? "consent" : "do not consent"] to the use of lewd verbs on your character.")
	SSblackbox.record_feedback("nested tally", "preferences_verb", 1, list("Allow Lewd Verbs", "[usr.client.prefs.toggles & VERB_CONSENT ? "Yes" : "No"]")) //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/datum/verbs/menu/Settings/verb_consent/Get_checked(client/C)
	return C.prefs.toggles & VERB_CONSENT

TOGGLE_CHECKBOX(/datum/verbs/menu/Settings, lewd_verb_sound_consent)()
	set name = "Toggle Lewd Verb Sounds"
	set category = "Preferences"
	set desc = "Mute Lewd Verb Sounds"

	usr.client.prefs.toggles ^= LEWD_VERB_SOUNDS
	usr.client.prefs.save_preferences()
	to_chat(usr, "You [(usr.client.prefs.toggles & LEWD_VERB_SOUNDS) ? "turn off" : "turn on"] lewd verb sounds.")
	SSblackbox.record_feedback("nested tally", "preferences_verb", 1, list("Toggle Lewd Verb Sounds", "[usr.client.prefs.toggles & LEWD_VERB_SOUNDS ? "Yes" : "No"]")) //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/datum/verbs/menu/Settings/lewd_verb_sound_consent/Get_checked(client/C)
	return C.prefs.toggles & LEWD_VERB_SOUNDS
