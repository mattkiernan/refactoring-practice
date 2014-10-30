class NullObject
  def initialize
    @name = "Does not exist"
    @location= "Does not exist"
    @phone = "Does not exist"
    @total_number_of_rooms = "Does not exist"
  end

  attr_reader :name, :location, :phone, :total_number_of_rooms
end
