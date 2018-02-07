class NrelService
  def search(key,params)
    response = "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CO&limit=2&api_key=ENV['api-key']&format=JSON&location='#{params}'&radius=6&limit=10&fuel_type=ELEC&fuel_type=LPG"
  end
end
