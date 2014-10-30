require "csv"
require "pry"

class HotelDatabase
  def initialize(file)
    @hotels = {}
    read_csv(file)
  end

  def read_csv(file)
    CSV.foreach(file, headers:true) do |row|
      name = row["Hotel"]
      @hotels[name] = row
    end 
  end
end

HotelDatabase.new("hotels.csv")

