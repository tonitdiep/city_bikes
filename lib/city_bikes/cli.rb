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
            # display_list_of_bikes
            # ask_user_for_bike_choice
            #display list of bikes at said bike station
        else
            #end the program 
            puts "Goodbye!"
        end    
    end
    # def ask_user_for_bike_choice
    #     #ask user to make a bike choice
    #     input = gets.strip.to_i - 1
       
    #       #validate their input how? have it validated their input?
    #     max_limit = Bike.all.length - 1
    #     until input.between?(0, max_limit)
    #         puts "Sorry, that is an invalid choice."
    #         input = gets.strip.to_i - 1
    #     end   
    # #     # bike_instance = Bike.all[index]
    # #     #  #bike choice decided and is saved
      
    # #     # display_list_of_bikes(bike_instance)
    # #     #   #calls method to print bike details
    # end
    def display_list_of_bikes
        #1) show access bike to bikes
        #2) show access to dock bikes
        Bike.all.each.with_index(1) do |bike, index|
            puts "#{index}. #{bike.name}"

        end
    end
end




#api file #bike file 
#def of purpose from lecture:
# interacts w/ user 
# include puts gets statements
# control the flow of the progra