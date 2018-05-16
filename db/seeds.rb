b_and_m = Manufacturer.find_or_create_by!(manufacturer_name: "Bolliger and Mabillard")
gci = Manufacturer.find_or_create_by!(manufacturer_name: "Great Coasters International")
cci = Manufacturer.find_or_create_by!(manufacturer_name: "Custom Coasters International")
gg = Manufacturer.find_or_create_by!(manufacturer_name: "Gravity Group")
intamin = Manufacturer.find_or_create_by!(manufacturer_name: "Intamin")
freeform = Manufacturer.find_or_create_by!(manufacturer_name: "Freeform")
schwarzkopf = Manufacturer.find_or_create_by!(manufacturer_name: "Schwarzkopf")
arrow = Manufacturer.find_or_create_by!(manufacturer_name: "Arrow Dynamics (includes 4th dimensions)")
vekoma = Manufacturer.find_or_create_by!(manufacturer_name: "Vekoma")
gerstlauer = Manufacturer.find_or_create_by!(manufacturer_name: "Gerstlauer")
maurer = Manufacturer.find_or_create_by!(manufacturer_name: "Maurer Sohne")
premier = Manufacturer.find_or_create_by!(manufacturer_name: "Premier")

standupbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Standup coaster",
	tall: 157,
	short: 90,
	difficult: true,
	can_launch: false,
	typical_elements: ["dive loop", "figure-8 ending", "inclined loop", "dipping first drop (see Green Lantern/Rougarou)", "track threading the loop (see Apocalypse/Vortex)"],
	plausible_elements: ["interlocking corkscrews", "zero-G-roll", "air hill", "pretzel knot (see Banshee)", "immelman", "straight drop w/B&M dip (see Georgia Scorcher/Superman La Attracion de Acero)", "overbanked turn (see Silver Bullet)", "pretzel knot (see Banshee)", "Katun drop", "watersplash", "high in the air turnaround (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (see Rougarou)", "large corkscrew (see Hydra)",  "flat turn drop (see Dragon Kahn)", "small floater hill (see Shambala/Flying Wing Coaster - Happy Valley", "air hill", 'helix', 'stengal dive', "ampersand (see Shambala)", "first inversion isn't a vertical loop"]
)

sitdownbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Sitdown Looper",
	tall: 161,
	short: 120,
	launch_options: ["flat launch (see Thunderbird - Holiday World)", "inclined launch (see Incredible Hulk)"],
	typical_elements: ["interlocking corkscrews", "cobra roll", "vertical loop", "immelman", "dive Loop", "zero G roll"],
	plausible_elements: ["small loop in second half (see Montu/Kraken)", "air hill", "straight drop w/B&M dip (see Georgia Scorcher/Superman La Attracion de Acero)", "sea serpent (see Medusa SFDK)", "flat turn drop (see Dragon Kahn or Medusa SFDK)", "dipping first drop (see Green Lantern/Rougarou)", "batwing (see Montu)", "jojo roll (see Hydra)", "trenches", "overbanked turn (see Silver Bullet)", "pretzel knot (see Banshee)", "inclined loop (see Riddler's Revenge)", "Katun drop", "small floater hill (see Shambala/Flying Wing Coaster - Happy Valley", "large corkscrew (see Hydra)", "watersplash", "intense helix (see Raptor)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, or Rougarou)", "S-hill (see Rougarou)", "double-down", "double-up", "stengal dive", "helix", "ampersand (see Shambala)", "first inversion isn't a vertical loop", "immelman into a helix (ripep Dueling Dragons)"]
)

floorlessbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Floorless coaster",
	tall: 164,
	short: 105,
	launch_options: ["flat launch (see Thunderbird - Holiday World)", "inclined launch (see Incredible Hulk)"],
	typical_elements: ["interlocking corkscrews", "cobra roll", "vertical loop", "dive loop", "zero G roll"],
	plausible_elements: ["small loop in second half (see Montu/Kraken)", "air hill", "straight drop w/B&M dip (see Georgia Scorcher/Superman La Attracion de Acero)", "sea serpent (see Medusa SFDK)", "dipping first drop (see Green Lantern/Rougarou)", "immelman", "batwing (see Montu)", "jojo roll (see Hydra)", "trenches", "overbanked turn (see Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (see Riddler's Revenge)", "Katun drop, small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley", "large corkscrew (see Hydra)", "intense helix (see Raptor)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (see Rougarou)", "ampersand (see Shambala)", "double-down", "double-up", "stengal dive", "helix" "first inversion isn't a vertical loop", "flat turn drop (see Dragon Kahn or Medusa SFDK)", "immelman into a helix (ripep Dueling Dragons)"]
)

invertedbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Inverted coaster",
	tall: 195,
	short: 85,
	launch_options: ["flat launch (see Thunderbird - Holiday World)", "inclined launch (see Incredible Hulk)"],
	typical_elements: ["cobra roll", "immelman", "zero G roll", "intense helix (see Raptor)"],
	plausible_elements: ["small loop in second half (see Montu/Kraken)", "sea serpent (see Medusa SFDK)", "immelman", "dive loop", "batwing (see Montu)", "jojo roll (see Hydra)", "trenches", "overbanked turn (see Silver Bullet", "pretzel knot (see Banshee)", "inclined loop (see Riddler's Revenge)", "barrel roll (see Bandshee)", "Katun drop", "large corkscrew (see Hydra)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "ampersand (see Shambala)", "air hill (see Dueling Dragons, ripep)", "stengal dive", "first inversion isn't a vertical loop", "immelman into a helix (ripep Dueling Dragons)"]
)

wing_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Wing coaster",
	tall: 196,
	short: 108,
	difficult: true,
	launch_options: ["flat launch (see Thunderbird - Holiday World)", "inclined launch (see Incredible Hulk)"],
	typical_elements: ["dive drop (see Gatekeeper)", "inline-twist (see X-Flight)", "immelman", "zero-G-roll", "keyholes (see Gatekeeper, Thunderbird - Holiday World, Raptor - Gardaland"],
	plausible_elements: ["demonic knot (see Flug der Dämonen)", "dive loop", "trenches", "straight drop (see Parrot Coaster)", "turning flippy drop (see Fenix)", "air hill", "vertical loop", "inclined loop (see Swarm)", "small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)", "pretzel knot (see Banshee)", "large corkscrew (see Hydra)", "batwing (see Montu)", "S-hill", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, or Rougarou)", "stengal dive", "helix", "ampersand (see Shambala)", "first inversion isn't a vertical loop"],
)

dive_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Dive coaster",
	tall: 223,
	short: 123,
	difficult: true,
	can_launch: false,
	typical_elements: ["really steep post-block brake drop", "immelman", "watersplash", "turn before the main drop"],
	plausible_elements: ["dive loop", "zero-G-roll", "air hill", "large corkscrew (see Hydra)", "inclined loop (see Riddler's Revenge)", "trenches", "overbanked turn (see Silver Bullet", "pretzel knot (see Banshee)", "small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)", "double-down", "double-up", "stengal dive", "helix", "ampersand (see Shambala)", "first inversion isn't an immelman", "immelman into a helix (ripep Dueling Dragons)"]
)

flying_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Flying coaster",
	tall: 170,
	short: 66,
	difficult: true,
	launch_options: ["flat launch (see Thunderbird - Holiday World)", "inclined launch (see Incredible Hulk)"],
	typical_elements: ["pretzel loop (see Manta)", "low turn near water (see Manta)", "barrel roll (see Tatsu)"],
	plausible_elements: ["corkscrew", "raven turn (see Flying Dinosaur)", "overbanked turn", "trenches", "540 zero-G-roll", "vertical loop (see Starry Sky Ripper)", "helix", "stengal dive", "half-corkscrew connected to anything else on this list", "half loop connected to anything else on this list", "ampersand (see Shambala)", "first inversion isn't a pretzel loop"]
)

hyper_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Hyper coaster",
	tall: 256,
	short: 145,
	can_invert: false,
	launch_options: ["flat launch (see Thunderbird - Holiday World)", "inclined launch (see Incredible Hulk)"],
	typical_elements: ["small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)"],
	plausible_elements: ["watersplash", "ampersand (see Shambala)", "long V-trains (see Diamondback)", "intense helix (see Nitro)", "double-down or double-up", "helix turnaround (see Goliath SFOG)", "B&M dip (see Raging Bull/Apollo's Chariot", "overbanked turn (see Silver Bullet)", "S-turnaround (see Intimidator)", "Fury 325 turnaround that ends at 90 degrees", "figure-8 finale (see Raging Bull)", "flat turnaround (see Goliath - La Ronde)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "dipping first drop (see Green Lantern/Rougarou)", "S-hill (see Rougarou)", "trenches", "stengal dive"]
)

giga_coasterbm = Product.find_or_create_by!(
	manufacturer_id: b_and_m.id,
	product_name: "B&M Giga coaster",
	tall: 325,
	short: 306,
	difficult: true,
	can_launch: false,
	typical_elements: ["small fast floater hill (see Shambala/Flying Wing Coaster - Happy Valley)", "hammerhead"],
	plausible_elements: ["watersplash", "ampersand (see Shambala)", "intense helix (see Nitro)", "double-down or double-up", "helix turnaround (see Goliath SFOG)", "B&M dip (see Raging Bull/Apollo's Chariot", "overbanked turn (see Silver Bullet)", "S-turnaround (see Intimidator)", "Fury 325 turnaround that ends at 90 degrees", "figure-8 finale (see Raging Bull)", "flat turnaround (see Goliath - La Ronde)", "high in the air turn (see Superman SFFT, Thunderbird - Holiday World, Rougarou)", "S-hill (see Rougarou)", "trenches", "ampersand (see Shambala)", "first drop ends in a turn"],
	can_invert: false
)

gci_coaster = Product.find_or_create_by!(
	manufacturer_id: gci.id,
	product_name: "GCI woodie",
	material: "wood",
	tall: 131,
	short: 75,
	can_invert: false,
	difficult: false,
	can_launch: false,
	typical_elements: ["out and back layout (see White Lightning/Mystic Timbers)", "sprawling layout (see Roar)", "low to the ground (see Prowler)", "terrain (see Wood Coaster - Knight Valley)"],
	plausible_elements: ["small floater hills (see American Thunder)", "station fly through (see Thunderhead)", "straight drop (see Invadr)", "S-drop (see Renegade/Wicker Man's second hill)", "trenches", "double-up/double-down combo (see White Lightning)", "80 degree turn (see Thunderhead)", "outer-banked hill (see Joris en de Draak)", "double-up", "double-down", "steel structure", "above-ground tunnels", "S-hill",  "prelift section", "second largest hill isn't right after the first drop"]
)

cci_coaster = Product.find_or_create_by!(
	manufacturer_id: cci.id,
	product_name: "CCI woodie",
	material: "wood",
	tall: 122,
	short: 80,
	can_invert: false,
	difficult: false,
	can_launch: false,
	typical_elements: ["cyclone layout (see Great White)", "terrain (see Boss)", "straight drop", "sprawling layout (see Rampage)", "linear out and back layout (see Shivering Timbers)", "2-seat PTCs"],
	plausible_elements: ["trenches", "double-up", "double-down", "heavy lateral G helix (see Boss)", "twisting drop (see Medusa - SFM)", "trick-track - see Shivering Timbers (before it was taken out)", "steel structure", "above-ground tunnels", "minimal banking (see Legend)", "section obviously reprofiled by GCI (see Boulder Dash)", "S-hill", "prelift section", "second largest hill isn't right after the first drop", "double-up/double-down combo (see White Lightning)"]
)

gg = Product.find_or_create_by!(
	manufacturer_id: gg.id,
	product_name: "Gravity Group woodie",
	material: "wood",
	tall: 122,
	short: 40,
	difficult: false,
	can_launch: false, 
	typical_elements: ["twister layout (see Twister - Grona Lund)", "terrain (see the Chinese Jungle Trailblazers)", "straight drop", "sprawling layout (see Ravine Flyer II)", "out and back layout (see Voyage)", "cyclone layout (see Mine Blower)"],
	plausible_elements: ["trenches", "double-up", "double-down", "steel structure", "overbanked-curve (see Cú Chulainn)", "corkscrew (see Hades 360)", "zero-G-roll (See Mine Blower)", "outer-banked curve (see Voyage)", "90 degree turn (see Ravine Flyer II)", "S-hill", "90 degree hill (see Jungle Trailblazer - Fantawild Asian Legends)", "prelift section", "twisting drop", "prelift section", "second largest hill isn't right after the first drop", "double-up/double-down combo (see White Lightning)"]
)

intawood = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Intamin woodie",
	material: "wood",
	tall: 180,
	short: 119,
	difficult: true,
	can_invert: false,
	can_launch: false,
	typical_elements: ["cyclone layout (see Balder)", "out and back layout (see Colossos)", "twister finale (see El Toro)"],
	plausible_elements: ["trenches", "double-up", "double-down", "S-hill", "prelift section", "second largest hill isn't right after the first drop", "double-up/double-down combo", "helix"]
)

freeform_woodie = Product.find_or_create_by!(
	manufacturer_id: freeform.id,
	product_name: "custom modern freeform woodie",
	material: "wood",
	tall: 220,
	short: 50,
	difficult: false,
	can_launch: false,
	typical_elements: ["cyclone layout (see Cyclone ( ͡° ͜ʖ ͡°) )", "linear out and back layout", "twister layout"],
	plausible_elements: ["trenches", "double-up", "double-down", "steel structure", "S-hill", "corkscrew", "zero-g-roll", "tunnel", "Mr. Twister drop", "big helix (see Beast)", "vertical loop (see Son of Beast)", "prelift section", "second largest hill isn't right after the first drop", "2-seat PTCS", "3-seat PTCS", "Morgan trains", "Timberliners", "overbanked-curve (see Cú Chulainn)", "helix", "double-up/double-down combo"]
)

freeform_classic_woodie = Product.find_or_create_by!(
	manufacturer_id: freeform.id,
	product_name: "custom freeform classic woodie",
	material: "wood",
	tall: 111,
	short: 66,
	difficult: true,
	old: true,
	can_launch: false,
	typical_elements: ["cyclone layout (see Cyclone ( ͡° ͜ʖ ͡°) )", "linear out and back layout", "twister layout"],
	plausible_elements: ["trenches", "double-up", "double-down", "S-hill",  "brutality (see Crystal Beach Cyclone)", "tunnel", "old-timey skid brakes (if applicable)", "drop into a big flat turn (see Hurler, Hercules - Dorney Park)", "enormous Dinn/Summers thing (see Mean Streak, Texas Giant, Jupiter)", "Mr. Twister drop", "big helix (see Beast)", "prelift section", "it's white!", "second largest hill isn't right after the first drop", "weird kinked drops (see SFNE Cyclone, ripep)", "2-seat PTCS", "3-seat PTCS", "Morgan trains", "double-up/double-down"]
)

schwarzkopf = Product.find_or_create_by!(
	manufacturer_id: schwarzkopf.id,
	product_name: "Schwarzkopf coaster",
	tall: 111,
	short: 66,
	difficult: false,
	old: true,
	can_launch: false,
	typical_elements: ["double-loop", "helix", "portable", "sprawling layout", "loops-arranged geometrically", "terrain"],
	plausible_elements: ["no inversions (see Jetline)", "'different' double-loops (see Zonga)", "tunnels", "trenches", "half-loop half-corkscrews (see Zonga)", "helix", "thread the loop", "figure-8-loop (but survivable)", "aesthetically arrange the loop(s)", "loops aren't in succession (see Mindbender - SFOG)", "air hill (see Alpinabahn)", "inclined(ish) loop (see Mindbender SFOG)", "ruthless German efficiency (make it run 4+ trains smoothly)", "older style (Revolution/SooperDooperLooper truss loop)"]
)

schwarzkopf = Manufacturer.find_or_create_by!(manufacturer_name: "Schwarzkopf")

schwarzkopf_shuttle = Product.find_or_create_by!(
	manufacturer_id: schwarzkopf.id,
	product_name: "Schwarzkopf shuttle coaster",
	tall: 148,
	short: 131,
	difficult: false,
	old: true,
	is_shuttle: true,
	launch_options: ["flat launch (see Montezuma's Revenge)", "reverse-tire driven curvy (see Bullet)", "tire launch (see Death Train - Marah Land)"],
	typical_elements: ["single loop"],
	plausible_elements: ["double loop", "turns", "portable", "tunnels", "trenches", "'differently shaped' double-loops (see Zonga)", "half-loop half-corkscrews (see Zonga)", "air hill (see Alpinabahn)", "helix"]
)

arrow_looper = Product.find_or_create_by!(
	manufacturer_id: arrow.id,
	product_name: "Arrow looping coaster",
	tall: 188,
	short: 70,
	difficult: false,
	old: true,
	can_launch: false,
	typical_elements: ["double loop", "double corkscrew", "sprawling layout", "terrain", "batwing"],
	plausible_elements: ["elevated single loop (see Viper - SFMM)", "triple corkscrew (see Fantasia Special	- Tongdo Fantasia)", "bowtie (see Dragon Mountain)", "interlocking loops (see Loch Ness Monster)", "airtime hills", "corkscrews aren't last (see Vortex - Kings Island", "cobra roll (see Drachen Fire)", "wraparound corkscrew (see Drachen Fire)", "cutback (see Drachen Fire)", "corkscrews aren't one after the other", "trench", "tunnel", "terrible helices (see Anaconda - Kings Dominion)", "sidewinder/immelman (see Ninja SF St. Louis)", "reverse sidewinder/dive loop", "turning drop", "straight drop", "helix", "only one corkscrew"]
)

vekoma_looper = Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma looping coaster",
	tall: 188,
	short: 65,
	difficult: false,
	launch_options: ["flat launch (see Xpress)", "inclined launch (see Space Mountain: Mission 2)"],
	typical_elements: ["double loop", "double corkscrew", "sprawling layout", "terrain", "batwing"],
	plausible_elements: ["triple corkscrew (see Fantasia Special - Tongdo Fantasia)", "bowtie (see Dragon Mountain)","corkscrews aren't last (see Vortex - Kings Island", "cobra roll (see Drachen Fire)", "corkscrews aren't one after the other", "trench", "tunnel", "butterfly (see Blue Hawk)", "sidewinder/immelman (see Ninja SF St. Louis)", "reverse sidewinder/dive loop", "more modern design (see Millennium Coaster)", "helix drop (see Horror Express)", "sea serpent (see Xpress)", "tilt drop (see Gravity Max)", "spaghetti-bowl style (see Xpress)", "helix", "stengal dive", "straight drop", "turning drop"]
)

vekoma = Manufacturer.find_or_create_by!(manufacturer_name: "Vekoma")

vekoma_flyer =  Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma flying coaster",
	tall: 115,
	short: 105,
	difficult: true,
	launch_options: ["flat launch, inclined launch"], 
	typical_elements: ["horseshoe", "turn before the drop"],
	plausible_elements: ["fly to lie", "lie to fly", "vertical loop", "barrel roll", "corkscrew", "helix", "tiny compact Stingray model",  "half-corkscrew connected to anything else on this list", "half loop connected to anything else on this list"]
)

vekoma_slc =  Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma Suspended Looping Coaster (SLC)",
	tall: 167,
	short: 109,
	difficult: false,
	can_launch: false,
	typical_elements: ["horseshoe", "roll over (sea serpent on the SLC model)", "immelman"],
	plausible_elements: ["cobra roll", "helix", "vertical loop", "zero G roll", "dive loop", "tight corkscrews (on the SLCs)", "corkscrew", "batwing", "trenches", "tunnel", "stengal dive", "overbanked turn"]
)

vekoma = Manufacturer.find_or_create_by!(manufacturer_name: "Vekoma")

vekoma_shuttle = Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma shuttle coaster",
	tall: 117,
	short: 117,
	difficult: false,
	old: true,
	is_shuttle: true,
	launch_options: ["flat launch (see Xpress)", "inclined launch (see Space Mountain: Mission 2)", "reverse lift (see Boomerang)"],
	typical_elements: ["cobra roll", "vertical loop"],
	plausible_elements: ["double loop", "turns", "portable", "tunnels", "trenches", "corkscrews", "sidewinder/immelman (see Ninja SF St. Louis)", "reverse sidewinder/dive loop", "bowtie (see Dragon Mountain)", "sea serpent (see Xpress)" "BWAHAHAHA IT'S NOW AN INVERTIGO WITH FACE OFF TRAINS", "'next-generation Boomerang' shaping", "overbank", "train starts backwards (see misc Meiso trash)"]
)

vekoma_motorbike =  Product.find_or_create_by!(
	manufacturer_id: vekoma.id,
	product_name: "Vekoma motorbike coaster",
	tall: 57,
	short: 47,
	difficult: false,
	must_launch: true,
	typical_elements: ["launch into a hill", "figure-8"],
	launch_options: ["flat launch", "inclined launch"],
	plausible_elements: ["overbanked turn", "zero-g-roll", "multiple launches", "trenches", "tunnels", "s-hill", "air hill", "helix", "inclined loop", "Use a chainlift instead"]
)

arrow = Manufacturer.find_or_create_by!(manufacturer_name: "Arrow Dynamics")

arrow_suspended = Product.find_or_create_by!(
	manufacturer_id: arrow.id,
	product_name: "Arrow suspended coaster",
	tall: 140,
	short: 81,
	difficult: false,
	old: true,
	can_invert: false,
	can_launch: false,
	typical_elements: ["terrain", "double-lift"],
	plausible_elements: ["pretzel knot (see Iron Dragon)", "straight drop", "S-drop", "turning drop", "tunnels", "trenches", "helix"]
)

fourth_dimension = Product.find_or_create_by!(
	manufacturer_id: arrow.id,
	product_name: "4th Dimension coaster",
	tall: 249,
	short: 215,
	difficult: true,
	typical_elements: ["vertical drop", "linear layout"],
	launch_options: ["flat launch (see Xpress)", "inclined launch (see Space Mountain: Mission 2)"],
	plausible_elements: ["inside raven turn", "outside raven turn", "raven turn with the straight section", "fly to lie", "lie to fly", "vertical loop", "pretzel loop (like B&M flyers)", "zero G roll", "trenches", "tunnels", "backflip", "front-flip", "air hill", "overbanked turn", "non-linear layout (make it a T or L shape or something"]
)

intamin = Manufacturer.find_or_create_by!(manufacturer_name: "Intamin")

intamin_impulse = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Impulse coaster",
	tall: 215,
	short: 150,
	difficult: false,
	is_shuttle: true,
	can_launch: true, 
	must_launch: true,
	launch_options: ["flat launch (see Vertical Velocity)", "inclined launch"],
	typical_elements: ["twisted rear spike", "twisted front spike", "inclined twisted spike", "straight spike"],
	plausible_elements: ["holding brake", "beyond vertical spike", "multiple sets of LIMS", "inclined-rear twisted spike", "zero G roll"]
)

intamin_invert = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Intamin inverted coaster",
	tall: 155,
	short: 98,
	difficult: true,
	launch_options: ["flat launch", "inclined launch", "triple-launch w/spike (see Soaring With Dragon)"],
	typical_elements: ["vertical loop", "barrel roll(s)"],
	plausible_elements: ["overbanked turn", "immelman", "dive loop", "flying snake dive", "sea serpent", "tunnels", "trenches", "multiple-launches", "cobra roll", "corkscrew", "helix", "stengal dive"]
)

intamin_looper = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Intamin multi-inversion coaster (long train, like Colossus or California Screamin')",
	tall: 121,
	short: 108,
	difficult: true,
	can_launch: false, 
	typical_elements: ["vertical loop", "barrel roll", "corkscrew", "cobra roll", "quad-heartline-roll"],
	plausible_elements: ["overbanked turn", "immelman", "dive loop", "flying snake dive", "sea serpent", "tunnels", "trenches", "multiple-launches", "norwegian loop (see Speed Monster)", "zero-g-roll", "stengal dive", "helix", "air hill", "s-hill"]
)

intamin_lsm = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Intamin LSM/Blitz coaster, like Fahrenheit, Taron, or Maverick",
	tall: 121,
	short: 108,
	difficult: true,
	must_launch: true,
	launch_options: ["flat launch", "over-a-hill (see Maverick)", "triple-launch w/spike (see Soaring With Dragon)"],
	typical_elements: ["tophat", "overbanked turn", "s-hills"],
	plausible_elements: ["vertical lift w/beyond vertical drop (see Fahrenheit)", "immelman", "dive loop", "flying snake dive", "sea serpent", "tunnels", "trenches", "multiple-launches (make it like Cheetah Hunt)", "norwegian loop (see Speed Monster)", "s-hills", "air hill", "cobra roll", "corkscrew", "vertical loop", "beyond vertical drop (see Maverick)", "double-up", "double-down", "non-inverting loop (see Flying Aces)", "zero-g-roll", "ultra-compact (see Taron)"]
)

intamin_accelerator = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Intamin accelerator coaster",
	tall: 205,
	short: 69,
	difficult: true,
	must_launch: true,
	launch_options: ["flat launch"],
	typical_elements: ["tophat", "overbanked turn", "s-hills"],
	plausible_elements: ["immelman", "dive loop", "flying snake dive", "sea serpent", "tunnels", "trenches", "norwegian loop (see Speed Monster)", "inverted tophat", "cobra roll", "corkscrew", "vertical loop", "air hill", "double-up", "double-down", "non-inverting loop (see Flying Aces)", "zero-g-roll", "forget what else is written, no inversions!", "no tophat", "tophat doesn't turn train 180 degrees (see Storm Runner)"]
)

intamin_mega = Product.find_or_create_by!(
	manufacturer_id: intamin.id,
	product_name: "Intamin mega/giga coaster",
	tall: 310,
	short: 101,
	difficult: true,
	can_launch: false,
	typical_elements: ["straight drop"],
	plausible_elements: ["overbanked turn", "trenches", "tunnels", "s-hills", "helix", "very small air hill (see Thunder Dolphin)", "twisted first drop (see Expedition GeForce)", "stengal dive (see Goliath at Walibi)", "double-up", "double-down", "high in the air turnaround before the drop (see Coaster Through the Clouds)", "tight low turns (see Hyperion)", "rapid transitions (see Intimidator 305)", "drop into an intense turn (see Intimidator 305)", "almost but not really a dive loop turnaround", "non-inverting loop (see Soaring with Dragon)", "drop into a turn (see SROS SFA)"]
)

gerstlauer = Manufacturer.find_or_create_by!(manufacturer_name: "Gerstlauer")

gerst_infinity = Product.find_or_create_by!(
	manufacturer_id: gerstlauer.id,
	product_name: "Infinity Coaster (longer train like Karnan or Smiler)",
	tall: 240,
	short: 80,
	difficult: true,
	launch_options: ["triple-launch w/spike (see Goldrush)", "dip into a flat launch (see Junker)", "inclined launch"],
	typical_elements: ["vertical lift", "beyond-vertical drop", "cobra roll", "dive loop into a tunnel"],
	plausible_elements: ["overbanked turn", "tophat", "launch", "fat loop", "vertical loop", "immelman", "sea serpent", "staffordshire knot (see Smiler)", "norwegian loop", "Gerstlauer-style dive loop (see Smiler, the entrance is straight)", "corkscrew", "barrel rolls", "the abomination/twisty thing on the Mystery Mine finale", "banana roll", "cutback", "air hill", "s-hill", "trenches", "tunnels", "prelift barrel roll", "launch and a lift (see Takabisha)", "not quite a loop and not quite a corkscrew (see Hangtime)", "inversion drop (see Smiler)", "holding brake (see Hangtime)", "stengal dive", "inclined loop (see Iron Shark)", "screw everything on the list, force no inversions like Karnan", "turn a random inversion into a non-inversion by force (see the seas serpent thing on Karnan)", "stengal dive", "helix"]
)

gerst_euro = Product.find_or_create_by!(
	manufacturer_id: gerstlauer.id,
	product_name: "Gerstlauer Eurofighter",
	tall: 141,
	short: 72,
	difficult: true,
	launch_options: ["flat launch", "dip into a flat launch (see Junker)"],
	typical_elements: ["vertical lift", "beyond-vertical drop", "immelman", "barrel roll"],
	plausible_elements: ["overbanked turn", "tophat", "fat loop", "vertical loop", "immelman", "sea serpent", "norwegian loop", "Gerstlauer-style dive loop (see Smiler, the entrance is straight)", "corkscrew", "barrel roll", "the abomination/twisty thing on the Mystery Mine's finale", "banana roll", "cutback", "air hill", "ultra tiny air hill (see Spongebob)", "s-hill", "trenches", "tunnels", "prelift barrel roll", "launch and a lift combo (see Takabisha)", "not quite a loop and not quite a corkscrew (see Takabisha)",  "portable", "holding brake (see Takabisha)", "stengal dive", "inclined loop (see Iron Shark)", "helix", "stengal dive", "portable"]
)

gerst_bobsled = Product.find_or_create_by!(
	manufacturer_id: gerstlauer.id,
	product_name: "Gerstlauer bobsled coaster (wild mouse thing)",
	tall: 63,
	short: 42,
	difficult: false,
	can_launch: false, 
	typical_elements: ["wild mouse turns", "intense helix", "multiple air hills", "s-hill", "trenches"],
	plausible_elements: ["tunnels", "overbanked turn", "double-up", "double-down", 'outer-banked curve', "stengal dive"]
)

gerst_spinner = Product.find_or_create_by!(
	manufacturer_id: gerstlauer.id,
	product_name: "Gerstlauer spinning coaster",
	tall: 85,
	short: 50,
	difficult: false,
	typical_elements: ["wild mouse turns", "helices", "s-hill", "trenches"],
	plausible_elements: ["tunnels", "overbanked turn", "double-up", "double-down", "corkscrew (see Veil of Dark - The Shooting Coaster)", "JUST KIDDING NOW MAKE IT A ZAMPERLA SPINNER AHAHAHAHAHA!!!!!", "inclined loop", "vertical turn", "stengal dive", "short boosts with tires (see Galaxy Orbiter)"]
)

launched_maurer_x_car = Product.find_or_create_by!(
	manufacturer_id: maurer.id,
	product_name: "Launched Maurer X-Car",
	tall: 79,
	short: 50,
	difficult: false,
	must_launch: true,
	launch_options: ["flat launch"],
	typical_elements: ["tophat", "corkscrew", "vertical loop"],
	plausible_elements: ["dive loop", "overbanked turn", "double-up", "double-down", 'outer-banked curve', "immelman", "barrel roll", "tunnels", "trenches", "s-hill", "helix", "stengal dive", "bent-Cuban-8 (see G Force at Drayton Manor", "non-inverting loop (see Hollywood Rip Rockit)"]
)

skyloop_maurer_x_car = Product.find_or_create_by!(
	manufacturer_id: maurer.id,
	product_name: "Maurer X-Car",
	tall: 167,
	short: 79,
	difficult: false,
	can_launch: false,
	typical_elements: ["non-inverting loop (see Hollywood Rip Rockit", "vertical inversion lift (see any Skyloop)", "bent-Cuban-8 (see G Force at Drayton Manor)"],
	plausible_elements: ["tunnels", "overbanked turn", "double-up", "double-down", 'outer-banked curve', "s-hill", "trenches", "stengal dive", "immelman", "make an 'extension' of a skyloop model (see Abismo)", "barrel roll", "s-hill", "helix", "corkscrew"]
)

maurer_spinner = Product.find_or_create_by!(
	manufacturer_id: maurer.id,
	product_name: "Maurer Spinning Coaster",
	tall: 84,
	short: 40,
	difficult: false,
	can_launch: false,
	typical_elements: ["vertical turn (see Dragons Fury)", "wild mouse turns"],
	plausible_elements: ["tunnels", "overbanked turn", "double-up", "double-down", 'outer-banked curve', "s-hill", "trenches", "stengal dive", "JUST KIDDING NOW MAKE IT A ZAMPERLA SPINNER AHAHAHAHAHA!!!!!", "inclined loop", "portable", "tilt-track (see Winjas)"]
)

premier_shuttle = Product.find_or_create_by!(
	manufacturer_id: premier.id,
	product_name: "Premier Shuttle Coaster",
	tall: 224,
	short: 164,
	difficult: false,
	is_shuttle: true,
	launch_options: ['flat launch'],
	typical_elements: ["inverted tophat", "overbanked turn"],
	plausible_elements: ["cobra roll", "zero-g-roll", "dive loop", "immelman", "vertical loop", "corkscrew", "vertical spike", "stengal dive", "non-inverting loop", "s-hill", "air hill", "vertical loop"]
)

premier_launcher = Product.find_or_create_by!(
	manufacturer_id: premier.id,
	product_name: "Premier Launch Coaster",
	tall: 160,
	short: 150,
	difficult: false,
	is_shuttle: true,
	launch_options: ['flat launch', 'inclined launch', 'hit the launch while the train is moving (see Sky Rocket)', 'reverse launch (see Full Throttle)'],
	typical_elements: ["cobra roll", "tophat"],
	plausible_elements: ["cobra roll", "zero g roll", "dive loop", "immelman", "vertical loop", "corkscrew", "inclined launch", "barrel roll", "s-hill", "air hill", "vertical loop", "loop is combined with another element like an air hill (see Full Throttle)", "stengal dive", "helix", "stall on the tophat (see Sky Rocket)", "new-gen tiny-trains (see Sky Rocket)", "spaghetti-bowl (see Joker's Jinx)"]
)