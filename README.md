# CityBikes

#CityBikes --a wonderful app for folks to access bikes stations for free bikes and to return them, whenver they needed it, per location request.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'city_bikes'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install city_bikes

## Usage

TODO: 
1) Bin folder setup and its files: start, setup, and console. This inform the program that I'm operating on Ruby with the shabang, '# !/usr/bin/env ruby'. This is all preparation to executive files in the lib folder, such initializing the CLI class by calling the start method.
2) Start file: 
3) Lib folder: api.rb, bike.rb, cli.rb
4) Environment: required any gems dealing with the API; make request to JSON url to retrieve data and parse with; require_relative all flies used in the api.rb, bike.rb, cli.rb 
5) Gemfile: gem "rake", "~> 12.0", gem 'pry', '~> 0.13.1', gem 'json', '~> 2.3', gem 'uri', '~> 0.10.0', gem 'url', '~> 0.3.2', gem 'fetch', '~> 0.0.5', gem 'parse', '~> 0.1.0', gem 'irb', '~> 1.2', '>= 1.2.4


#ruby bin/city_bikes
#initialize cli class by calling the start method
# very little code to start your program


CLI.new.start
# cli_instance = CLI.new
# cli_instance.start
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/city_bikes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/city_bikes/blob/master/CODE_OF_CONDUCT.md).


## License 

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CityBikes project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/city_bikes/blob/master/CODE_OF_CONDUCT.md).
