class SearchFacade
  def self.food(ingredient)
    foods = FoodService.food(ingredient)
    foods[:foods].map{|food| Food.new(food)}
  end
end
