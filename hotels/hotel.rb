require "./decorator"

class Hotel
  def initialize(row)
    decorator = Decorator.new(row)
    decorate_info(decorator)
  end

  attr_reader :name, :phone, :location

  def total_number_of_rooms
    @number_of_singles + @number_of_doubles
  end

  def decorate_info(decorator)
    @name = decorator.strip_string("Hotel")
    @phone = decorator.format_phone("Phone Number")
    @location = decorator.strip_string("City")
    @number_of_singles = decorator.convert_to_integer("Number of Singles")
    @number_of_doubles = decorator.convert_to_integer("Number of Doubles")
  end
end
