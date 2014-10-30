class Decorator
  def initialize(row)
    @row = row
  end

  def strip_string(string)
    @row[string].strip 
  end

  def format_phone(number)
    pattern = /(\d{2})?\(?(\d{3})\)?[-.]?(\d{3})[-.]?(\d{4})/
    match = pattern.match(@row[number])
    "+#{match[1] || 1} (#{match[2]}) #{match[3]}-#{match[4]}"
  end

  def convert_to_integer(string)
    @row[string].gsub(",","").to_i
  end
end
