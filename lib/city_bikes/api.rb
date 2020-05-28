#get the data from uri, kinda like controller --> creating objects

class API
    def self.fetch_stations
        url = "http://api.citybik.es/v2/networks/citi-bike-nyc"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_stations = hash["network"]["stations"]   


        array_of_stations.each do |station_hash|    
            #initialize a new station
            #assign attributes to it
            bike_instance = Bike.new

            bike_instance.empty_slots = station_hash["empty_slots"]
            bike_instance.free_bikes = station_hash["free_bikes"]
            bike_instance.name = station_hash["name"]
        end

    end
end
