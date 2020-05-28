#require any gems i.e. deals w/ API
require 'pry'
require 'net/http'  
# make request to Json url to retrieve data 
require 'json'     
# parse that data

# require all files that we will use 
# how to test environt page ? 


#require relative  -the other files in our lib folder
require_relative './city_bikes/cli' #use when file is w/in our directory
require_relative './city_bikes/api' 
require_relative './city_bikes/bikes' 
