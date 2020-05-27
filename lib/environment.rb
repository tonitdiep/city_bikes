#require any gems 
require 'pry'
# require 'net/http' why ? 
# require 'json'  why?



#require relative  -the other files in our lib folder
require_relative 'city_bikes/cli' #use when file is w/in our directory 
# require_relative 'city_bikes/api'  ->API:CLASS (NoMethodError)
# require_relative 'city_bikes/bikes' ->API:CLASS (NoMethodError) so now it''s commented for now