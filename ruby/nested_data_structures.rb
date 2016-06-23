surf_and_skate_store = {
	hardware: {
		surf: [
			'surfboards', 
			'fins', 
			'leashes',
			'wax'
			],
		skate: [
			'skateboards',
			'trucks',
			'bearings',
			'wheels',
			'grip tape'
			]
		},
	clothes: [
		'boardshorts',
		't-shirts',
		'skate pants',
		'flannels',
		'hats',
		'shoes',
		'sandals'
		]
}

p surf_and_skate_store[:hardware][:skate][2]

# result is bearings

p surf_and_skate_store[:hardware][:surf][0]

# result is surfboards

p surf_and_skate_store[:clothes][4]

# results in hats