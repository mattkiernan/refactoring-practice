require "csv"
require "pry"
require "./hotel"

class HotelDatabase
  def initialize(file)
    @hotels = {}
    read_csv(file)
    binding.pry
  end

  def read_csv(file)
    CSV.foreach(file, headers:true) do |row|
      name = row["Hotel"]
      @hotels[name] = Hotel.new(row)
    end 
  end
end

HotelDatabase.new("hotels.csv")

