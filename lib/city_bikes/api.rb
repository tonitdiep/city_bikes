#get the data from uri, kinda like controller --> creating objects

class APLI
    url = "http://api.citybik.es/v2/networks/citi-bike-nyc"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    # binding.pry
    array_of_stations = hash["network"]["stations"][0..3]
    # binding.pry

    array_of_stations.each do |station_hash|
        # binding.pry
        #initialize a new station
        bikes_instance = Bikes.new
        #assign attributes to it
        bikes_instance.empty_slots = station_hash["empty_slots"]
        bikes_instance.free_bikes = station_hash["free_bikes"]
        bikes_instance.name = station_hash["name"]
       
    end

end