#data from citibikes api attributes and save all citi bikes nyc stations/sites created 
class Bike

    attr_accessor :empty_slots, :free_bikes, :name
    @@all = []
    def initialize
        @@all << self
    end
    # parking=> station_instance.empty_slots = station_hash["empty_slots"]
    # avail=>  station_instance.free_bikes = station_hash["free_bikes"]
    # stations=> name/address station_instance.name = station_hash["name"]

    def self.all
        @@all
    end
end




# station_instance.empty_slots = station_hash["empty_slots"]
# station_instance.free_bikes = station_hash["free_bikes"]
# stationyes_instance.name = station_hash["name"]
