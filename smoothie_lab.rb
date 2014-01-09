smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# define blend method
def blend(smoothie_ingredients)
  # set ingredients to smoothie_ingredients hash
  # display the keys of each smoothie_ingredient and 
  # join together in one string
  # substitute all the spaces with no space 
	ingredients = smoothie_ingredients.keys.join.gsub(" ", "")
  # set ingredients_blended to ingredients
  # split all the characters and run shuffle to mix them
  # join together the mixed characters
	ingredients_blended = ingredients.split("").shuffle.join
  # print out blended ingredients
	puts ingredients_blended
end

# test out blend method
blend(smoothie_ingredients)

# --------------------------------------------------------------

# set ingredients to an array
ingredients = ["mango", "flax seed", "soy milk"]

# set a class Blender
class Blender

  # attributes of a Blender that is both readable and writeable
  attr_accessor :ingredients, :status

  # initializing each instance of the Blender class
  # to have an argument, ingredients, passed to it
	def initialize(ingredients)
    # setting each instance's ingredients to the 
    # argument passed
		@ingredients = ingredients
    # setting each instance's status to off by default
		@status = "off"
	end

  #define mix method
	def mix
    # mix will only run if instance's status is on
		if @status == "on"
			ingred = @ingredients.join.gsub(" ", "")
			ingredients_mixed = ingred.split("").shuffle.join
			puts ingredients_mixed
		# otherwise the power by default is off
    else
			puts "The power is off."
		end
	end

  # define power method
  def power
    # set instance's status to on
    @status = "on"
  end

  # define is_on method
  #def is_on
  #  if @status == "on" return true 
  #end

end

# set blender as a new instance of Blender
blender = Blender.new(ingredients)
# test out power method on blender instance
# if power method is not applied to blender,
# blender mix will not run
blender.power
# test out mix method on blender instance
blender.mix

# --------------------------------------------------------------

# puts "The blender is currently off"
# puts "type 'on' to turn on blender"
# print ">"
# blender.status = gets.chomp.downcase



