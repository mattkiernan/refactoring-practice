class Hotel
  def initialize(row)
    @name= row["Hotel"]
    @phone = row["Phone Number"]
    @location = row["City"]
    @number_of_singles = row["Number of Singles"]
    @number_of_doubles = row["Number of Doubles"]
  end

  attr_reader :name, :phone, :location

  def total_number_of_rooms
    @number_of_singles.to_i + @number_of_doubles.to_i
  end

end
