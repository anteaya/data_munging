require 'test/unit'
require 'rubygems'
require 'shoulda'

# output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column). 



class WeatherDataTest < Test::Unit::TestCase 
  context "given a parsed weather data file" do
    setup do
      @parser = WeatherDataParser.new("./weather.dat")
    end

    should "output day number with smallest temperature difference"

    context "for any given day" do
      should "know the day number" 
      should "know the maximum temperature"
      should "know the minimum temperature"
    end
  end
end

