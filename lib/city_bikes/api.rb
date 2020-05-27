#get the data from uri

class APLI
    url = "http://api.citybik.es/v2/networks/citi-bike-nyc"
    uri = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)
    # array_of_city_bikes = hash ["bike_stations"]
    # doc = Nokogiri::HTML(open(site))
    # puts doc

end