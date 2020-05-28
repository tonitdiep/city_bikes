#data from citibikes api attributes and save all citi bikes nyc stations/sites created 
class Bike

    attr_accessor :empty_slots, :free_bikes, :name
    @@all = []
    def initialize
        @@all << self
    end
    # parking=> bikes_instance.empty_slots = station_hash["empty_slots"]
    # avail=> bikes bikes_instance.free_bikes = station_hash["free_bikes"]
    # stations=> name/address bikes_instance.name = station_hash["name"]

    def self.all
        @@all
    end
end




# bikes_instance.empty_slots = station_hash["empty_slots"]
# bikes_instance.free_bikes = station_hash["free_bikes"]
# bikes_instance.name = station_hash["name"]
