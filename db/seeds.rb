b_and_m = Manufacturer.find_or_create_by!(manufacturer_name: "Bolliger and Mabillard")
gci = Manufacturer.find_or_create_by!(manufacturer_name: "Great Coasters International")
cci = Manufacturer.find_or_create_by!(manufacturer_name: "Custom Coasters International")
gg = Manufacturer.find_or_create_by!(manufacturer_name: "Gravity Group")
intamin = Manufacturer.find_or_create_by!(manufacturer_name: "Intamin")
freeform = Manufacturer.find_or_create_by!(manufacturer_name: "Freeform")
schwarzkopf = Manufacturer.find_or_create_by!(manufacturer_name: "Schwarzkopf")
arrow = Manufacturer.find_or_create_by!(manufacturer_name: "Arrow Dynamics")
vekoma = Manufacturer.find_or_create_by!(manufacturer_name: "Vekoma")

standupbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Standup coaster",
	tall: 157,
	short: 90,
	max_loops: 6,
	min_loops: 2,
	difficult: true,
	typical_elements: ["dive loop", "figure-8 ending", "inclined loop", "dipping first drop (see Green Lantern/Rougarou)", "track threading the loop (see Apocalypse/Vortex)"],
	plausible_elements: ["interlocking corkscrews", "zero-G-roll", "air hill", "pretzel knot (see Banshee)", "immelman", "straight drop w/B&M dip (see Georgia Scorcher/Superman La Attracion de Acero)", "overbanked turn (see Silver Bullet)", "pretzel knot (see Banshee)", "Katun drop", "watersplash", "high in the air turnaround (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (see Rougarou)", "large corkscrew (see Hydra)", "small floater hill (see Shambala/Flying Wing Coaster - Happy Valley", "air hill"]
)

sitdownbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Sitdown Looper",
	tall: 161,
	short: 120,
	max_loops: 8,
	min_loops: 5,
	typical_elements: ["interlocking corkscrews", "cobra roll", "vertical loop", "immelman", "dive Loop", "zero G roll"],
	plausible_elements: ["small loop in second half (see Montu/Kraken)", "air hill", "straight drop w/B&M dip (see Georgia Scorcher/Superman La Attracion de Acero)", "sea serpent (see Medusa SFDK)", "dipping first drop (see Green Lantern/Rougarou)", "batwing (see Montu)", "jojo roll (see Hydra)", "trenches", "overbanked turn (see Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (see Riddler's Revenge)", "Katun drop", "small floater hill (see Shambala/Flying Wing Coaster - Happy Valley", "large corkscrew (see Hydra)", "watersplash", "intense helix (see Raptor)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (see Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (see Incredible Hulk)", "double-down or double-up"]
)

floorlessbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Floorless coaster",
	tall: 164,
	short: 105,
	max_loops: 7,
	min_loops: 4,
	typical_elements: ["interlocking corkscrews", "cobra roll", "vertical loop", "dive loop", "zero G roll"],
	plausible_elements: ["small loop in second half (see Montu/Kraken)", "air hill", "straight drop w/B&M dip (see Georgia Scorcher/Superman La Attracion de Acero)", "sea serpent (see Medusa SFDK)", "dipping first drop (see Green Lantern/Rougarou)", "immelman", "batwing (see Montu)", "jojo roll (see Hydra)", "trenches", "overbanked turn (see Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (see Riddler's Revenge)", "Katun drop, small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley", "large corkscrew (see Hydra)", "intense helix (see Raptor)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (see Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (see Incredible Hulk)", "double-down or double-up"],
)

invertedbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Inverted coaster",
	tall: 195,
	short: 85,
	max_loops: 7,
	min_loops: 3,
	typical_elements: ["cobra roll", "immelman", "zero G roll", "intense helix (see Raptor)"],
	plausible_elements: ["small loop in second half (see Montu/Kraken)", "sea serpent (see Medusa SFDK)", "immelman", "dive loop", "batwing (see Montu)", "jojo roll (see Hydra)", "trenches", "overbanked turn (see Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (see Riddler's Revenge)", "barrel roll (see Bandshee)", "Katun drop", "in a hole (see Nemesis/Black Mamba)", "large corkscrew (see Hydra)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (see Incredible Hulk)", "air hill (see Dueling Dragons, ripep"]
)

wing_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Wing coaster",
	tall: 196,
	short: 108,
	max_loops: 7,
	min_loops: 3,
	difficult: true,
	typical_elements: ["dive drop (see Gatekeeper)", "inline-twist (see X-Flight)", "immelman", "zero-G-roll", "keyholes (see Gatekeeper, Thunderbird - Holiday World, Raptor - Gardaland"],
	plausible_elements: ["demonic knot (see Flug der Dämonen)", "dive loop", "trenches", "straight drop (see Parrot Coaster)", "air hill", "vertical loop", "inclined loop (see Swarm)", "small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)", "pretzel knot (see Banshee)", "large corkscrew (see Hydra)", "batwing (see Montu)", "S-hill", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (see Incredible Hulk)"],
)

dive_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Dive coaster",
	tall: 223,
	short: 123,
	max_loops: 3,
	min_loops: 0,
	difficult: true,
	typical_elements: ["really steep post-block brake drop", "immelman"],
	plausible_elements: ["watersplash", "dive loop", "zero-G-roll", "air hill", "large corkscrew (see Hydra)", "inclined loop (see Riddler's Revenge)", "trenches", "overbanked turn (see Silver Bullet", "pretzel knot (see Banshee)", "small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)", "double-down or double-up"]
)

flying_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Flying coaster",
	tall: 170,
	short: 66,
	max_loops: 5,
	min_loops: 2,
	difficult: true,
	typical_elements: ["pretzel loop (see Manta)", "low turn near water (see Manta)", "barrel roll (see Tatsu)"],
	plausible_elements: ["corkscrew", "raven turn (see Flying Dinosaur)", "overbanked turn", "trenches", "540 zero-G-roll", "vertical loop (see Starry Sky Ripper)", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (see Incredible Hulk)"]
)

hyper_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Hyper coaster",
	tall: 256,
	short: 145,
	max_loops: 0,
	min_loops: 0,
	typical_elements: ["small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)"],
	plausible_elements: ["watersplash", "ampersand (see Shambala)", "long V-trains (see Diamondback)", "intense helix (see Nitro)", "double-down or double-up", "helix turnaround (see Goliath SFOG)", "B&M dip (see Raging Bull/Apollo's Chariot", "overbanked turn (see Silver Bullet)", "S-turnaround (see Intimidator)", "Fury 325 turnaround that ends at 90 degrees", "figure-8 finale (see Raging Bull)", "flat turnaround (see Goliath - La Ronde)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "dipping first drop (see Green Lantern/Rougarou)", "S-hill (see Rougarou)", "tenches", "flat launch (see Thunderbird - Holiday Park)", "inclined launch (see Incredible Hulk)"],
	can_invert: false
)

giga_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Giga coaster",
	tall: 325,
	short: 306,
	max_loops: 0,
	min_loops: 0,
	difficult: true,
	typical_elements: ["small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)"],
	plausible_elements: ["watersplash", "ampersand (see Shambala)", "intense helix (see Nitro)", "double-down or double-up", "helix turnaround (see Goliath SFOG)", "B&M dip (see Raging Bull/Apollo's Chariot", "overbanked turn (see Silver Bullet)", "S-turnaround (see Intimidator)", "Fury 325 turnaround that ends at 90 degrees", "figure-8 finale (see Raging Bull)", "flat turnaround (see Goliath - La Ronde)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (see Rougarou)", "trenches"],
	can_invert: false
)

gci_coaster = Product.find_or_create_by!(
	manufacturer_id: gci.id,
	product_name: "GCI woodie",
	material: "wood",
	tall: 131,
	short: 75,
	max_loops: 0,
	min_loops: 0,
	can_invert: false,
	difficult: false,
	typical_elements: ["out and back layout (see White Lightning/Mystic Timbers)", "sprawling layout (see Roar)", "low to the ground (see Prowler)", "terrain (see Wood Coaster - Knight Valley)"],
	plausible_elements: ["small floater hills (see American Thunder)", "station fly through (see Thunderhead)", "straight drop (see Invadr)", "S-drop (see Renegade/Wicker Man's second hill)", "trenches", "double-up/double-down combo (see White Lightning)", "80 degree turn (see Thunderhead)", "outer-banked hill (see Joris en de Draak)", "double-up", "double-down", "steel structure", "above-ground tunnels", "S-hill",  "prelift section", "second largest hill isn't right after the first drop"]
)

cci_coaster = Product.find_or_create_by!(
	manufacturer_id: cci.id,
	product_name: "CCI woodie",
	material: "wood",
	tall: 122,
	short: 80,
	max_loops: 0,
	min_loops: 0,
	can_invert: false,
	difficult: false,
	typical_elements: ["cyclone layout (see Great White)", "terrain (see Boss)", "straight drop", "sprawling layout (see Rampage)", "linear out and back layout (see Shivering Timbers)", "2-seat PTCs"],
	plausible_elements: ["trenches", "double-up", "double-down", "heavy lateral G helix (see Boss)", "twisting drop (see Medusa - SFM)", "trick-track - see Shivering Timbers (before it was taken out)", "steel structure", "above-ground tunnels", "minimal banking (see Legend)", "section obviously reprofiled by GCI (see Boulder Dash)", "S-hill", "prelift section", "second largest hill isn't right after the first drop"]
)

gg = Product.find_or_create_by!(
	manufacturer_id: gg.id,
	product_name: "Gravity Group woodie",
	material: "wood",
	tall: 122,
	short: 40,
	max_loops: 1,
	min_loops: 0,
	difficult: false,
	typical_elements: ["twister layout (see Twister - Grona Lund)", "terrain (see the Chinese Jungle Trailblazers)", "straight drop", "sprawling layout (see Ravine Flyer II)", "out and back layout (see Voyage)", "cyclone layout (see Mine Blower)"],
	plausible_elements: ["trenches", "double-up", "double-down", "steel structure", "overbanked-curve (see Cú Chulainn)", "corkscrew (see Hades 360)", "zero G roll (See Mine Blower)", "outer-banked curve (see Voyage)", "90 degree turn (see Ravine Flyer II)", "S-hill", "90 degree hill (see Jungle Trailblazer - Fantawild Asian Legends)", "prelift section", "twisting drop", "prelift section", "second largest hill isn't right after the first drop"]
)

intawood = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Intamin woodie",
	material: "wood",
	tall: 180,
	short: 119,
	max_loops: 0,
	min_loops: 0,
	difficult: true,
	can_invert: false,
	typical_elements: ["cyclone layout (see Balder)", "out and back layout (see Colossos)", "twister finale (see El Toro)"],
	plausible_elements: ["trenches", "double-up", "double-down", "S-hill", "prelift section", "second largest hill isn't right after the first drop"]
)

freeform_woodie = Product.find_or_create_by!(
	manufacturer_id: freeform.id,
	product_name: "custom modern freeform woodie",
	material: "wood",
	tall: 220,
	short: 50,
	max_loops: 3,
	min_loops: 0,
	difficult: false,
	typical_elements: ["cyclone layout (see Cyclone ( ͡° ͜ʖ ͡°) )", "linear out and back layout", "twister layout"],
	plausible_elements: ["trenches", "double-up", "double-down", "steel structure", "S-hill", "corkscrew", "zero-g-roll", "tunnel", "Mr. Twister drop", "big helix (see Beast)", "vertical loop (see Son of Beast)", "prelift section", "second largest hill isn't right after the first drop", "2-seat PTCS", "3-seat PTCS", "Morgan trains", "Timberliners", "overbanked-curve (see Cú Chulainn)"]
)

freeform_classic_woodie = Product.find_or_create_by!(
	manufacturer_id: freeform.id,
	product_name: "custom freeform classic woodie",
	material: "wood",
	tall: 111,
	short: 66,
	max_loops: 0,
	min_loops: 0,
	difficult: true,
	old: true,
	typical_elements: ["cyclone layout (see Cyclone ( ͡° ͜ʖ ͡°) )", "linear out and back layout", "twister layout"],
	plausible_elements: ["trenches", "double-up", "double-down", "S-hill",  "brutality (see Crystal Beach Cyclone)", "tunnel", "old-timey skid brakes (if applicable)", "drop into a big flat turn (see Hurler, Hercules - Dorney Park)", "enormous Dinn/Summers thing (see Mean Streak, Texas Giant, Jupiter)", "Mr. Twister drop", "big helix (see Beast)", "prelift section", "it's white!", "second largest hill isn't right after the first drop", "weird kinked drops (see SFNE Cyclone, ripep)", "2-seat PTCS", "3-seat PTCS", "Morgan trains"]
)

schwarzkopf = Product.find_or_create_by!(
	manufacturer_id: schwarzkopf.id,
	product_name: "Schwarzkopf coaster",
	tall: 111,
	short: 66,
	max_loops: 5,
	min_loops: 0,
	difficult: false,
	old: true,
	typical_elements: ["double-loop", "helix", "portable", "sprawling layout", "loops-arranged geometrically", "terrain"],
	plausible_elements: ["no inversions (see Jetline)", "'different' double-loops (see Zonga)", "portable", "tunnels", "trenches", "half-loop half-corkscrews (see Zonga)"]
)

schwarzkopf = Manufacturer.find_or_create_by!(manufacturer_name: "Schwarzkopf")

schwarzkopf_shuttle = Product.find_or_create_by!(
	manufacturer_id: schwarzkopf.id,
	product_name: "Schwarzkopf shuttle coaster",
	tall: 148,
	short: 131,
	max_loops: 3,
	min_loops: 0,
	difficult: false,
	old: true,
	is_shuttle: true,
	typical_elements: ["launch", "reverse-tire lift (see Bullet - Selva Mágica)", "tire launch (see Death Train - Marah Land)"],
	plausible_elements: ["double loop", "turns", "portable", "tunnels", "trenches", "'different' double-loops (see Zonga)", "half-loop half-corkscrews (see Zonga)"]
)

arrow_looper = Product.find_or_create_by!(
	manufacturer_id: arrow.id,
	product_name: "Arrow looping coaster",
	tall: 188,
	short: 70,
	max_loops: 7,
	min_loops: 2,
	difficult: false,
	old: true,
	typical_elements: ["double loop", "double corkscrew", "sprawling layout", "terrain", "batwing"],
	plausible_elements: ["elevated single loop (see Viper - SFMM)", "triple corkscrew (see Fantasia Special	- Tongdo Fantasia)", "bowtie (see Dragon Mountain)", "interlocking loops (see Loch Ness Monster)", "airtime hills", "corkscrews aren't last (see Vortex - Kings Island", "cobra roll (see Drachen Fire)", "wraparound corkscrew (see Drachen Fire)", "cutback (see Drachen Fire)", "corkscrews aren't one after the other", "trench", "tunnel", "terrible helices (see Anaconda - Kings Dominion)", "sidewinder/immelman (see Ninja SF St. Louis)", "reverse sidewinder/dive loop"]
)

vekoma_looper = Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma looping coaster",
	tall: 188,
	short: 65,
	max_loops: 7,
	min_loops: 2,
	difficult: false,
	typical_elements: ["double loop", "double corkscrew", "sprawling layout", "terrain", "batwing"],
	plausible_elements: ["triple corkscrew (see Fantasia Special - Tongdo Fantasia)", "bowtie (see Dragon Mountain)","corkscrews aren't last (see Vortex - Kings Island", "cobra roll (see Drachen Fire)", "corkscrews aren't one after the other", "trench", "tunnel", "butterfly (see Blue Hawk)", "sidewinder/immelman (see Ninja SF St. Louis)", "reverse sidewinder/dive loop", "more modern design (see Millennium Coaster)", "helix drop (see Horror Express)", "sea serpent (see Xpress)", "tilt drop (see Gravity Max)", "flat launch (see Xpress)", "inclined launch (see Space Mountain: Mission 2)", "spaghetti-bowl style (see Xpress)"]
)

vekoma = Manufacturer.find_or_create_by!(manufacturer_name: "Vekoma")

vekoma_flyer =  Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma flying coaster",
	tall: 115,
	short: 105,
	max_loops: 5,
	min_loops: 1,
	difficult: true,
	typical_elements: ["horseshoe"],
	plausible_elements: ["fly to lie", "lie to fly", "vertical loop", "barrel roll", "corkscrew", "helix", "tiny compact Stingray model"]
)

vekoma = Manufacturer.find_or_create_by!(manufacturer_name: "Vekoma")

vekoma_shuttle = Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma shuttle coaster",
	tall: 117,
	short: 117,
	max_loops: 6,
	min_loops: 2,
	difficult: false,
	old: true,
	is_shuttle: true,
	typical_elements: ["cobra roll", "vertical loop"],
	plausible_elements: ["double loop", "turns", "portable", "tunnels", "trenches", "corkscrews", "sidewinder/immelman (see Ninja SF St. Louis)", "reverse sidewinder/dive loop", "bowtie (see Dragon Mountain)", "sea serpent (see Xpress)" ]
)

arrow = Manufacturer.find_or_create_by!(manufacturer_name: "Arrow Dynamics")

arrow_suspended = Product.find_or_create_by!(
	manufacturer_id: arrow.id,
	product_name: "Arrow suspended coaster",
	tall: 140,
	short: 81,
	max_loops: 0,
	min_loops: 0,
	difficult: false,
	old: true,
	can_invert: false,
	typical_elements: ["terrain", "double-lift"],
	plausible_elements: ["pretzel knot (see Iron Dragon)", "straight drop", "S-drop", "tunnels", "trenches"]
)
