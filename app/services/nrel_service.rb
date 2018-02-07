class NrelService
  attr_reader :result
  def initialize(params)
    @result = search(params)
  end

  def search(params)
    key = ENV['api-key']
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CO&limit=2&api_key=#{key}&format=JSON&location=#{params}&radius=6&limit=10&fuel_type=ELEC&fuel_type=LPG")
    response = JSON.parse(response.body)
  end

  def station_name
    names = @search['fuel_stations'].map{|station|station['station_name']}
  end

  def station_type
    type =  @search['fuel_stations'].map{|station|station['fuel_type']}
    binding.pry
  end
end
