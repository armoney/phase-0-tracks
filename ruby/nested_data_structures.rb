house = { 

	bathroom: {
		toilet: "standard",
		shower: "stand-up",
		medicine_cabinet: [
			"toothbrush",
			"toothpaste",
			"medicine" 
		],
		bathroom_supplies: {
			soap_bars: 2,
			toiletpaper_rolls: 4,
			towels: 2
		}

	},

	master_bedroom: {
		bed: "king size",
		closet: "walk in",


	},

	bedroom2: {
		bed: "queen size",
		closet: "standard",

	},

	bedroom3: {
		bed: "twin size",
		closet: "standard",
	},

	living_room: {
		TV: "40 inch",
		couch: nil,
		fireplace: nil

	},

	garage: {
		car1: {
			mazda: "MX-5",
			contents: [
				"empty water bottle",
				"fast food napkins"
			]
		},
		car2: {
			toyota: "Corola",
			contents: [
				"gym bag",
				"pens"
			]
		}
	}
}

#This prints "fast food napkins"
p house[:garage][:car1][:contents][1]

#This prints 4
p house[:bathroom][:bathroom_supplies][:toiletpaper_rolls]

#This reverses the contents array
p house[:garage][:car2][:contents].reverse