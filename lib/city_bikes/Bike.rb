#data from citibikes api attributes and save all citi bikes nyc stations 
class Bike

    attr_accessor :empty_slots, :free_bikes, :name
    @@all = []

    def initialize(attr_hash={})
        @empty_slots = attr_hash[:empty_slots]
        @free_bikes = attr_hash[:free_bikes]
        @name = attr_hash[:name]
        @@all << self
    end

    # parking=> station_instance.empty_slots = station_hash["empty_slots"]
    # avail=>  station_instance.free_bikes = station_hash["free_bikes"]
    # stations=> name/address station_instance.name = station_hash["name"]

    def self.all   #self method is important, as it Bike.all give us class to the variable we defined in this class
        @@all
    end

end












# def self.availabile_bikes
    #     @@all.select do |bike| 
    #     bike.free_bikes > 5 
    #     end
    # end

    # def self.empty_slots
        # @@all.select do |slots|
        # slots.empty_slots > 10
    # end  
    # def #find all free bikes @@all.find_by bike.all.free_bikes