require "csv"
require "pry"
require "./hotel"

class HotelDatabase
  def initialize(file)
    @hotels = {}
    read_csv(file)
  end

  def read_csv(file)
    CSV.foreach(file, headers:true) do |row|
      name = row["Hotel"]
      @hotels[name] = Hotel.new(row)
    end 
  end

  def query
    hotel_name = get_user_input
    hotel = find_hotel(hotel_name) 
    print(hotel)
  end

  def get_user_input
    puts "Enter a hotel name >"
    gets.chomp
  end

  def find_hotel(hotel_name)
    @hotels[hotel_name]
  end

  def print(hotel)
    puts "Name: #{hotel.name}"
    puts "Location: #{hotel.location}"
    puts "Phone Number: #{hotel.phone}"
    puts "Total Number of Rooms: #{hotel.total_number_of_rooms}"
  end
end

db = HotelDatabase.new("hotels.csv")
db.query

