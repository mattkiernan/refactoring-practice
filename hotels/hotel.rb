require "csv"

class Hotel

  def print_names
    CSV.foreach("hotels.csv", headers:true) do |row|
      puts row["Hotel"]
    end
  end


end

hotel = Hotel.new
hotel.print_names
