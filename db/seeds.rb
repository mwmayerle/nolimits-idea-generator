b_and_m = Manufacturer.find_or_create_by(manufacturer_name: "Bolliger and Mabillard")

standupbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Standup coaster",
	tall: 157,
	short: 90,
	max_loops: 6,
	min_loops: 2,
	difficult: true,
	typical_elements: ["dive loop", "figure-8 ending", "inclined loop", "dipping first drop (See Green Lantern/Rougarou)", "track threads loop (See Apocalypse/Vortex)", "large corkscrew (See Hydra)"],
	plausible_elements: ["interlocking corkscrews", "zero-G-roll", "air hill", "pretzel knot (see Banshee)", "immelman", "straight drop w/B&M dip (See Georgia Scorcher/Supoer La Attracion de Acero)", "overbanked turn (See Silver Bullet)", "pretzel knot (see Banshee)", "Katun drop", "watersplash", "high in the air turn (See Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (See Rougarou)"]
)

sitdownbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Sitdown Looper",
	tall: 161,
	short: 120,
	max_loops: 8,
	min_loops: 5,
	typical_elements: ["interlocking corkscrews", "cobra roll", "vertical loop", "immelman", "dive Loop", "zero G roll"],
	plausible_elements: ["small loop in second half (See Montu/Kraken)", "air hill", "straight drop w/B&M dip (See Georgia Scorcher/Supoer La Attracion de Acero)", "sea serpent (See Medusa SFDK)", "dipping first drop (See Green Lantern/Rougarou)", "batwing (See Montu)", "jojo roll (See Hydra)", "trenches", "overbanked turn (See Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (See Riddler's Revenge)", "Katun drop", "small fast floater hill (See Shambala/Flying Wing Coaster - Happy Valley", "large corkscrew (See Hydra)", "watersplash", "intense helix (See Raptor)", "high in the air turn (See Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (See Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (See Incredible Hulk)"]
)

floorless = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Floorless coaster",
	tall: 164,
	short: 105,
	max_loops: 7,
	min_loops: 4,
	typical_elements: ["interlocking corkscrews", "cobra roll", "vertical loop", "dive loop", "zero G roll"],
	plausible_elements: ["small loop in second half (See Montu/Kraken)", "air hill", "straight drop w/B&M dip (See Georgia Scorcher/Supoer La Attracion de Acero)", "sea serpent (See Medusa SFDK)", "dipping first drop (See Green Lantern/Rougarou)", "immelman", "batwing (See Montu)", "jojo roll (See Hydra)", "trenches", "overbanked turn (See Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (See Riddler's Revenge)", "Katun drop, small fast floater hill (See Shambala/Flying Wing Coaster - Happy Valley", "large corkscrew (See Hydra)", "watersplash", "intense helix (See Raptor)", "high in the air turn (See Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (See Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (See Incredible Hulk)"],
)

inverted = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Inverted coaster",
	tall: 195,
	short: 85,
	max_loops: 7,
	min_loops: 3,
	typical_elements: ["cobra roll", "immelman", "zero G roll", "intense helix (See Raptor)"],
	plausible_elements: ["small loop in second half (See Montu/Kraken)", "sea serpent (See Medusa SFDK)", "immelman", "dive loop", "batwing (See Montu)", "jojo roll (See Hydra)", "trenches", "overbanked turn (See Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (See Riddler's Revenge)", "barrel roll (See Bandshee)", "Katun drop", "in a hole (See Nemesis/Black Mamba)", "large corkscrew (See Hydra)", "high in the air turn (See Superman SFFT, Thunderbird - Holiday World, Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (See Incredible Hulk)"]
)

wing_coaster = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Wing coaster",
	tall: 196,
	short: 108,
	max_loops: 7,
	min_loops: 3,
	difficult: true,
	typical_elements: ["dive drop (See Gatekeeper)", "inline-twist (See X-Flight)", "immelman", "zero-G-roll", "keyholes (See Gatekeeper, Thunderbird - Holiday World, Raptor - Gardaland"],
	plausible_elements: ["demonic knot (See Flug der Dämonen)", "dive loop", "trenches", "straight drop (See Parrot Coaster)", "air hill", "vertical loop", "inclined loop (See Swarm)", "small fast floater hill (See Shambala/Flying Wing Coaster - Happy Valley)", "pretzel knot (See Banshee)", "large corkscrew (See Hydra)", "batwing (See Montu)", "S-hill", "high in the air turn (See Superman SFFT, Thunderbird - Holiday World, Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (See Incredible Hulk)"],
)

dive_coaster = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "Dive coaster",
	tall: 223,
	short: 123,
	max_loops: 3,
	min_loops: 0,
	difficult: true,
	typical_elements: ["really steep post-block brake drop", "immelman"],
	plausible_elements: ["watersplash", "dive loop", "zero-G-roll", "corkscrew", "air hill", "large corkscrew (See Hydra)", "inclined loop (See Riddler's Revenge)", "trenches", "overbanked turn (See Silver Bullet", "pretzel knot (see Banshee)", "small fast floater hill (See Shambala/Flying Wing Coaster - Happy Valley)"]
)

flying_coaster = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "Flying coaster",
	tall: 170,
	short: 66,
	max_loops: 5,
	min_loops: 2,
	difficult: true,
	typical_elements: ["pretzel loop (See Manta)", "low turn into water (See Manta)", "barrel roll (See Tatsu)", "fly-to-lie / lie-to-fly"],
	plausible_elements: ["corkscrew", "raven turn (See Flying Dinosaur)", "overbanked turn", "trenches", "540 zero-G-roll", "vertical loop (See Starry Sky Ripper)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (See Incredible Hulk)"]
)

hyper_coaster = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Hyper coaster",
	tall: 256,
	short: 145,
	max_loops: 0,
	min_loops: 0,
	typical_elements: ["small fast floater hill (See Shambala/Flying Wing Coaster - Happy Valley)"],
	plausible_elements: ["watersplash", "ampersand (See Shambala)", "long V-trains (See Diamondback)", "intense helix (See Nitro)", "double-down/double-up", "helix turnaround (See Goliath SFOG)", "B&M dip (see Raging Bull/Apollo's Chariot", "overbanked turn (See Silver Bullet)", "S-turnaround (See Intimidator)", "Fury 325 turnaround that ends at 90 degrees", "figure-8 finale (See Raging Bull)", "flat turnaround (See Goliath - La Ronde)", "high in the air turn (See Superman SFFT, Thunderbird - Holiday World, Rougarou)", "dipping first drop (See Green Lantern/Rougarou)", "S-hill (See Rougarou)", "tenches", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (See Incredible Hulk)"],
	can_invert: false
)

giga_coaster = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Giga coaster",
	tall: 325,
	short: 306,
	max_loops: 0,
	min_loops: 0,
	difficult: true,
	typical_elements: ["small fast floater hill (See Shambala/Flying Wing Coaster - Happy Valley)"],
	plausible_elements: ["watersplash", "ampersand (See Shambala)", "intense helix (See Nitro)", "double-dip/double up", "helix turnaround (See Goliath SFOG)", "B&M dip (see Raging Bull/Apollo's Chariot", "overbanked turn (See Silver Bullet)", "S-turnaround (See Intimidator)", "Fury 325 turnaround that ends at 90 degrees", "figure-8 finale (See Raging Bull)", "flat turnaround (See Goliath - La Ronde)", "high in the air turn (See Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (See Rougarou)", "trenches"],
	can_invert: false
)