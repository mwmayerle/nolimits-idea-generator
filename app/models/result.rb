class Result < ApplicationRecord

	def self.process_params(preferences, products)
		products = filter_by_age(preferences, products)
		products = filter_by_material(preferences, products)
		products = filter_by_shuttle(preferences, products)
		products = filter_by_inversion(preferences, products)
		products = filter_by_launch(preferences, products) if preferences["material"] == "steel" 
		products = filter_by_difficulty(preferences, products)
		products
	end

	def self.pick_attributes(preferences, products)
		ride = randomly_choose_product(products)
		ride["terrain"] = add_terrain_restriction(preferences) if preferences["terrain"] == "on"
		ride = get_height_range(preferences, ride)
		sample_interval = get_sample_interval(preferences, ride, "plausible_elements")
		ride["plausible_elements"] = choose_elements(sample_interval, ride, "plausible_elements")
		sample_interval = get_sample_interval(preferences, ride, "typical_elements")
		ride["restricted_elements"] = choose_elements(sample_interval, ride, "typical_elements")
		ride
	end

	def self.filter_by_age(preferences, products)
		case preferences["age"]
			when "old"
				products = products.select { |product| product["old"] }
			when "new"
				products = products.reject { |product| product["old"] }
		end
		products
	end

	def self.filter_by_material(preferences, products)
		case preferences["material"]
			when "wood"
				products = products.select { |product| product["material"] == "wood" }
			when "steel"
				products = products.select { |product| product["material"] == "steel" }
		end
		products
	end

	def self.filter_by_shuttle(preferences, products)
		case preferences["shuttle_ok"]
			when "yes"
				products = products.select { |product| product["is_shuttle"] }
			when "no"
				products = products.reject { |product| product["is_shuttle"] }
			end
		products
	end

	def self.filter_by_inversion(preferences, products)
		case preferences["inversions"]
			when "yes"
				products = products.select { |product| product["can_invert"] }
			when "no"
				products = products.reject { |product| product["can_invert"] }
		end
		products
	end

	def self.filter_by_launch(preferences, products)
		case preferences["launch"]
		when "yes"
			products = products.select { |product| product["launch"] || product["can_launch"] }
		when "maybe"
			products = products.select { product["can_launch"] }
		when "no"
			products = products.reject { |product| product["launch"] || product["can_launch"] }
		end
		products
	end

	def self.filter_by_difficulty(preferences, products)
		case preferences["difficulty"]
			when "yes"
			products = products.select { |product| product["difficult"] }
			when "no"
			products = products.reject { |product| product["difficult"] }
		end
		products
	end

	def self.randomly_choose_product(products)
		choosen_ride = products.map { |product| product["product_name"] }.sample
		choosen_ride = products.select { |product| product["product_name"] == choosen_ride }.pop
		choosen_ride
	end

	def self.get_height_range(preferences, ride)
		average = ride["tall"].to_i + (ride["short"].to_i / 2.0)
		average_min = average - (average / 7.0)
		average_max = average + (average / 7.0)

		short_min = ride["short"].to_i - (ride["short"].to_i / 7.0)
		short_max = ride["short"].to_i * 1.15

		tall_max = ride["tall"].to_i * 1.15
		tall_min = ride["tall"].to_i - (ride["tall"].to_i / 7.0)
				
		case preferences["height"]
			when "indifferent"
			ride["recommended_height"] = rand(short_min..tall_max).round
			when "small"
			ride["recommended_height"] = rand(short_min..short_max).round
			when "average"
			ride["recommended_height"] = rand(average_min..average_max).round
			when "tall"
			ride["recommended_height"] = rand(tall_min..tall_max).round
		end
		ride
	end

	def self.get_sample_interval(preferences, ride, element_type)
		case preferences["elements"]
			when "few"
			sample_interval = (ride[element_type].length / 4.0).round
			when "average"
			sample_interval = (ride[element_type].length / 3.0).round
			when "many"
			sample_interval = (ride[element_type].length / 2.0).round
			when "indifferent"
			sample_interval = (ride[element_type].length / rand(2.0..4.0)).round
		end
		sample_interval
	end

	def self.choose_elements(sample_interval, ride, element_type)
		elements = []
		while elements.length < sample_interval
			index = rand(0..(ride[element_type].length - 1))
			if !elements.include?(ride[element_type][index])
				elements << ride[element_type][index]
			end
		end
		elements
	end

	def self.add_terrain_restriction(preferences)
		["cross-over a river multiple times, but you can't put supports in the water", "be built over the side of a lake, but you can't put supports in the water", "have the station be the highest point of the ride", "be less than 50ft above ground level", "be built up the side of a hill", "have terrain that forces the first drop to not be the largest drop"].sample
	end

end
