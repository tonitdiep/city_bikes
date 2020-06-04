#get the data from uri, kinda like controller --> creating objects

class API
    def self.fetch_stations
        url = "http://api.citybik.es/v2/networks/citi-bike-nyc"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_stations = hash["network"]["stations"]   

        array_of_stations[0..100].each do {|station_hash|} 
            #1)initialize a new station by only looking at stations of a specific range from [0..100] in this iteration 
            #2)assign attributes by the writer method to decide the station_hash
           
            attr_hash = (empty_slots:, free_bikes:, name:)
            Bike.new(attr_hash={})
            
            station_hash = { 
                @empty_slots => attr_hash[:empty_slots]
                @free_bikes => attr_hash[:free_bikes]
                @name => attr_hash[:name]
            }
            
            Bike.new
            # station_instance = Bike.new[:empty_slots, :free_bikes, :name] #initialize objects 
            #attributes that would be assigned thru station_hash

            # station_instance.empty_slots = station_hash["empty_slots"]
            # station_instance.free_bikes = station_hash["free_bikes"]
            # station_instance.name = station_hash["name"]
        end
    end
end
