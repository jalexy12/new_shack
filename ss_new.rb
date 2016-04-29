class Ingredient
	attr_accessor :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end

# Menu
banana = Ingredient.new("Banana", 2)
caramel = Ingredient.new("Caramel", 1)
berries = Ingredient.new("Berries", 3)


class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(single_ingredient)
		@ingredients.push(single_ingredient)
	end

	def total_price
		total = @base_price
		# Go through all of the ingredients
		@ingredients.each do | single_ingredient | 
			total += single_ingredient.price
		end

		# Return the total
		total
	end
end

my_shake = MilkShake.new
my_shake.add_ingredient(banana)
my_shake.add_ingredient(berries)

puts my_shake.total_price
