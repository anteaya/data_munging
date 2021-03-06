require 'test/unit'
require 'rubygems'
require 'shoulda'

# output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column). 

class WeatherDataRow < Struct.new(:day, :max_temp, :min_temp); end

class WeatherDataParser
  attr_reader :file_path  

  def initialize(file_path)
    @file_path = file_path
  end

  def row_for_day(day)
    #  WeatherDataRow.new(30, 90, 45)
  end
end

class WeatherDataTest < Test::Unit::TestCase 
  context "given a parsed weather data file" do
    setup do
      @parser = WeatherDataParser.new("./weather.dat")
    end

    should "know the path to the data file" do
      assert_equal "./weather.dat", @parser.file_path
    end

    should "output day number with smallest temperature difference"

    context "for day 1" do
      setup do
        @row = @parser.row_for_day 1
      end

      should "know the day number" do
        assert_equal 1, @row.day
      end

      should "know the maximum temperature" do
        assert_equal 88, @row.max_temp
      end

      should "know the minimum temperature" do
        assert_equal 59, @row.min_temp
      end
    end

    context "for day 30" do
      setup do
        @row = @parser.row_for_day 30
      end

      should "know the day number" do
        assert_equal 30, @row.day
      end

      should "know the maximum temperature" do
        assert_equal 90, @row.max_temp
      end

      should "know the minimum temperature" do
        assert_equal 45, @row.min_temp
      end
    end
  end
end

