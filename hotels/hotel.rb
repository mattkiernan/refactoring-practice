class Hotel
  def initialize(row)
    @name = strip_string(row["Hotel"])
    @phone = format_phone(row["Phone Number"])
    @location = strip_string(row["City"])
    @number_of_singles = convert_to_integer(row["Number of Singles"])
    @number_of_doubles = convert_to_integer(row["Number of Doubles"])
  end

  attr_reader :name, :phone, :location

  def total_number_of_rooms
    @number_of_singles + @number_of_doubles
  end

  def strip_string(string)
    string.strip 
  end

  def format_phone(number)
    pattern = /(\d{2})?\(?(\d{3})\)?[-.]?(\d{3})[-.]?(\d{4})/
    match = pattern.match(number)
    "+#{match[1] || 1} (#{match[2]}) #{match[3]}-#{match[4]}"
  end

  def convert_to_integer(string)
    string.gsub(",","").to_i
  end
end
