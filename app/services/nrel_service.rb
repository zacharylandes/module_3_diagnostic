class NrelService
  attr_reader :result, :lat, :long
  
  def initialize(params)
    @result = search(params)
    @lat = @result['latitude']
    @long= @result['longitude']
  end

  def search(params)
    key = ENV['api-key']
    response = Faraday.get("https://developer.nrel.gov//api/alt-fuel-stations/v1/nearest.json?fuel_type=E85,ELEC&state=CO&limit=2&api_key=#{key}&format=JSON&location=#{params}&radius=6&limit=10&fuel_type=ELEC&fuel_type=LPG")
    response = JSON.parse(response.body)
  end

end
