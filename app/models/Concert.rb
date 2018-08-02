class Concert
  attr_accessor :attendance, :date, :band, :venue

  @@all = []

  def initialize(attendance=nil, date, band, venue)
    @attendance = attendance
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

end
