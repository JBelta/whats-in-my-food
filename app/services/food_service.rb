class FoodService


  private

  def self.conn
    Faraday.new('https://api.nal.usda.gov/fdc') do |f|
      f.headers['x-api-key'] = ENV['USDA_API_KEY']
    end
  end 
end
