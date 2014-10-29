require "csv"

class Hotel

  def read_file
    CSV.foreach("hotels.csv") do |row|
      puts row
    end
  end

end

hotel = Hotel.new
hotel.read_file
