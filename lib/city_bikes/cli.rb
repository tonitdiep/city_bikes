class CLI
#start method & logic (tracks interaction w/ user file)
    def start 
    # <-not yet =>no such file/directory(Load Error)
        puts "Welcome"
        API.fetch_stations
        self.directory
    end
    
    def directory 
        puts "Are you here for a bike ride?"   
            #welcome, here to access a bike or dock(park) it?
        puts "Type 'yes' to continue or any other key to exit."     
        user_input = gets.strip.downcase   #user's input w/ the gets method, no extra white spaces
        if user_input == "yes" || user_input == "y"
            puts "Awesome, let's get started!"
            display_list_of_bikes
            ask_user_for_bike_choice
        else
            #end the program 
            puts "Goodbye!"
        end    
    end

    def display_list_of_bikes     #display list of bikes at said bike station
        #1) show access to bikes
        #2) show access to dock bikes
        Bike.all.each.with_index(1) do |bike, index|
            puts "#{index}. #{bike.name}"
        end
    end
    def ask_user_for_bike_choice
    #     #ask user to make a bike choice
        input = gets.strip.to_i - 1     #change from string to integter to index w/ -1
        index = input - 1
                    # or index = gets.strip.to_i - 1
        #validate their input
        #if input is between the range of the list
        max_limit = Bike.all.length - 1
        
        until index.between?(0, max_limit)    #unless given valid index check, we can reask for thier index# #more flexibile # not hard coding
            puts "Sorry this choice is invalid."
            index = gets.strip.to_i - 1     # ask another ? after invalid choice (mini loop)
        #if not in between, so ask for their choice again^
        end
        #found their bike choice
        bike_instance = Bike.all[index]   
        #print out their choice
            # puts bike_instance.name  or
        #now consider: call the method that will print out the details
        display_bike_details(bike_instance)
    end

    def display_bike_details(bike_instance)
        #know about their bike chosen choice
        puts "Empty_Slots:" + bike.empty_slots
        puts "Free_Bikes:" + bike.free_bikes
        puts "Name:" + bike.name
    end
end




#api file #bike file 
#def of purpose from lecture:
# interacts w/ user 
# include puts gets statements
# control the flow of the program