class Ingredient
  attr_accessor :name, :unit, :quantity
  
  def initialize(argument)
    @argument = argument
  end

  def ingredient_summary(ingredient)
    @ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
  end

  def summary
    @summary = ingredient
  end

end
  puts Ingredient.ingredient_summary
