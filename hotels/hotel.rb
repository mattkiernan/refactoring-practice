require "csv"

class Hotel

  def read_csv
    CSV.read("hotels.csv", headers:true)
  end

end
