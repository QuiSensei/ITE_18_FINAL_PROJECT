function init_data() {
	gml_pragma("global", "init_data();");

	global.bestiary = json_decode(@'
		{
			"fish":[
				{
					"name":"Fish",
					"sprite":"spr_fish",
					"description":"A generic fish that sums things up as much as you`d expect.\nFish come in all shapes and sizes, and while we`d love to classify them all, sometimes they`re just too similar for classification. We`re not experts, sorry."
				},
				{
					"name":"Dolphin",
					"sprite":"spr_dolphin",
					"description":"They playful creatures are actually mammals, and have complex speech patterns."
				},
				{
					"name":"Whale",
					"sprite":"spr_whale",
					"description":"One big boy. Whales can emit far reaching sounds that can be heard by other whales thousands of miles away."
				},
				{
					"name":"Jellyfish",
					"sprite":"spr_jellyfish",
					"description":"Spineless and brainless, these critters don`t do much besides drift around and digest whatever gets caught in their tentacles"
				},
				{
					"name":"Eel",
					"sprite":"spr_eel",
					"description":"Eels move by undulating their entire body, much like a snake. Some eels have a second set of jaws within their first set!"
				},
				{
					"name":"Octopus",
					"sprite":"spr_octopus",
					"description":"Highly intelligent and regenerative, octopi are also masters of camoflage, able to change their skin tone to match their environment. They can even make patterns on their skin!"
				},
				{
					"name":"Dagon",
					"sprite":"spr_dagon_icon",
					"description":"Some things are best left unexamined."
				}
			],
		
			"birds":[
				{
					"name":"Seagull",
					"sprite":"spr_seagull",
					"description":"Essentially a rat with wings. This bird`s primary food source is human garbage."
				},
				{
					"name":"Puffin",
					"sprite":"spr_puffin",
					"description":"Squat of stature and short of beak, but don`t let looks deceive you. Puffins are known to be highly successful publishers of childrens books."
				},
				{
					"name":"Penguin",
					"sprite":"spr_penguin",
					"description":"While flightless, penguins can achieve extraordinary speeds in the ocean. It`s a bit reckless to swim with your eyes closed, though."
				},
				{
					"name":"Duck",
					"sprite":"spr_duck",
					"description":"If it`s not made of rubber, it probably won`t be much help with coding."
				},
				{
					"name":"Sun",
					"sprite":"spr_sun",
					"description":"Umm... Well, it`s in the sky, so I guess you could count this as a bird. If you were nuts."
				},
			],
			"achievements":[
				{
					"name":"Sky High",
					"description":"Help a penguin fulfill its dreams."
				},
				{
					"name":"Hot, Hot, Hot",
					"description":"Grab ahold of the sun."
				},
				{
					"name":"Gotta Scan Them All",
					"description":"Examine every species."
				},
				{
					"name":"Dream No More",
					"description":"Disturb a sleeping beast."
				},
				{
					"name":"Fly Fishing",
					"description":"Spook a fish out of the water."
				}
			]
		}
	');

	global.save_filename = "save.sav";
	global.save = load_data();

	global.waterline = 0;


}
