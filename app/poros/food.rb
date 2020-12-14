class Food
  attr_reader :brand,
              :description,
              :code,
              :ingredients

  def initialize(food_data)
    @brand = food_data[:brandOwner]
    @description = food_data[:description]
    @code = [:gtinUpc]
    @ingredients = food_data[:ingredients]
  end
end
