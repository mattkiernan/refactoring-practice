require "./hotel"

class Database

  def query
    @user_request = get_user_request
    read_csv
    find_hotel
    #search_database(user_request, file)
    #return_result
  end

  def get_user_request
    puts "What property?"
    gets.chomp
  end

  def read_csv
    hotel = Hotel.new
    @csv = hotel.read_csv
  end

  def find_hotel
    hotel_row = @csv.find{|row| row['Hotel'] == @user_request} 
    puts "Phone Number: #{hotel_row["Phone Number"]}"
    puts "City: #{hotel_row["City"]}"
    puts "Number of Singles: #{hotel_row["Number of Singles"]}"
    puts "Number of Doubles: #{hotel_row["Number of Doubles"]}"
  end

end

database = Database.new
database.query
