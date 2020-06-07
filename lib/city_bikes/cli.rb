class CLI

    def start 
        puts "Welcome"
        API.fetch_stations
        self.directory
    end
    
    def directory 
        puts "Are you here for a bike ride?"   
        puts "Type 'yes' to continue or any other key to exit."     
        user_input = gets.strip.downcase   
        if user_input == "yes" || user_input == "y"
            puts "Awesome, let's get started!"
            display_list_of_stations
            ask_user_for_bike_choice    
            directory
        else       
            puts "Goodbye!"  
        end    
    end

    def display_list_of_stations     
        Bike.all.each.with_index do |station, index|
            puts "#{index +1}. #{station.name}"
        end
    end


    def ask_user_for_bike_choice
        input = gets.strip.to_i     
        index = input - 1
        max_limit = Bike.all.length - 1       
        until index.between?(0, max_limit)  
            puts "Sorry this choice is invalid. Pick another station. "   #invalid
            index = gets.strip.to_i - 1
        end
        station = Bike.all[index]    
        display_station_details(station) 
    end

    def display_station_details(station)
        puts "\n"  
        puts "\nEmpty_Slots:" + station.empty_slots.to_s
        puts "\nFree_Bikes:" + station.free_bikes.to_s
        puts "\nName:" + station.name
    end
end




