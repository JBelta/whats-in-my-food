class FoodService

  def self.food(ingredient)
    response = conn.get('v1/foods/search') do |req|
      req.params[:query] = ingredient
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new('https://api.nal.usda.gov/fdc/') do |f|
      f.headers['x-api-key'] = ENV['USDA_API_KEY']
    end
  end
end
