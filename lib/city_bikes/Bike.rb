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

    def availabile_bikes(free_bikes)
          binding.pry 
        #   array_of_stations.all[1..101].select do |station| station.free_bikes
        # station_hash["free_bikes"].all.select do |station|  station.free_bikes
        # end
    end

    # def empty_sl
    # end  
    # def #find all free bikes @@all.find_by bike.all.free_bikes
end




# station_instance.empty_slots = station_hash["empty_slots"]
# station_instance.free_bikes = station_hash["free_bikes"]
# stationyes_instance.name = station_hash["name"]
