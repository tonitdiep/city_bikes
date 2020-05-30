class CLI
#start method & logic (tracks interaction w/ user file)
    def start 
        puts "Welcome"
        API.fetch_stations
        self.directory
    end
    
    def directory 
        puts "Are you here for a bike ride?"   
        #After the 'start' method, Users, are at the directory to access a stations's info and choices
        puts "Type 'yes' to continue or any other key to exit."     
        user_input = gets.strip.downcase   #user's input w/ the gets method, no extra white spaces
        if user_input == "yes" || user_input == "y"
            puts "Awesome, let's get started!"
            display_list_of_stations
            ask_user_for_bike_choice    
            directory ##return to directory(menu)
        else
            
            puts "Goodbye!"  #ends the program 
        end    
    end

    def display_list_of_stations     #display list of bikes per station
        #1) show access to bikes
        #2) show access to dock bikes
        # Bike.availabile_bikes
        Bike.all.each.with_index(1) do |station, index|
            puts "#{index}. #{station.name}"
        end
    end


    def ask_user_for_bike_choice
    # #ask user to make a bike choice
        input = gets.strip.to_i     #est User's input w/ the change from string to integter to index w/ -1
        index = input - 1
                    # or index = gets.strip.to_i - 1
        
        #validate user's input after making their selection
        #listing of statiosn and its bike details is constantly updated and growing, so a range is determined from the API.rb
        #with the determined range in the API.rb, the data we're using fro the uri, is controlled, workable, viewable in the lists of statios and its details
       
        #if input is between the range of the list

        max_limit = Bike.all.length - 1         #to create a loop we still need to establish the max_limit, starting from 0 to account for the class of Bike's length
        until index.between?(0, max_limit)    #unless given valid index check, we can re-ask for thier index# #more flexibile # not hard coding
            puts "Sorry this choice is invalid."   #invalid
            index = gets.strip.to_i - 1   #after invalid choice ask another question (mini loop)
        end
        station_instance = Bike.all[index]    #found their station choice & save it as a variable
        
            # puts station_instance.name  
        
        display_station_details(station_instance) 
        #now consider: call the method that will print out the details
    end

    def display_station_details(station)
    #     #know about their bike chosen choice
        puts "\n"   #spacing esc characters on own line
        puts "\nEmpty_Slots:" + station.empty_slots.to_s
        puts "\nFree_Bikes:" + station.free_bikes.to_s
        puts "\nName:" + station.name
    end
end




#api file #bike file 
#def of purpose from lecture:
# interacts w/ user 
# include puts gets statements
# control the flow of the program