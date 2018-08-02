class Venue
  attr_accessor :name, :location, :capacity

  @@all = []

  def initialize(name, location, capacity)
    @name = name
    @location = location
    @capacity = capacity
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_location(location)
    all.select do |venue|
      venue.location == location
    end
  end

  def concerts
    Concert.all.select do |concert|
      concert.venue == self
    end
  end

  def concert_dates
    concerts.map do |concert|
      concert.date
    end
  end

  def bands
    concerts.map do |concert|
      concert.band
    end
  end

  def average_attendance
    # total = 0
    #
    # concerts.each do |concert|
    #   total += concert.attendance
    # end
    #
    # total / concerts.count

    attendances = concerts.map do |concert|
      concert.attendance
    end

    total = attendances.reduce(:+)

    total / attendances.count
  end

end
