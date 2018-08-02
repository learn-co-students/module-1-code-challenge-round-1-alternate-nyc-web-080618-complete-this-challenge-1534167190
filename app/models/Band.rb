class Band
  attr_accessor :name, :genre

  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert|
      concert.band == self
    end
  end

  def venues
    concerts.map do |concert|
      concert.venue
    end
  end

  def add_concert(date, attendance, venue)
    Concert.new(attendance, date, self, venue)
  end

  def update_attendance(concert, number)
    if concert.band == self
      concert.attendance = number
    end
  end

  def all_capacity
    total = 0

    venues.each do |venue|
      total += venue.capacity
    end

    total
  end

  def all_attendance
    total = 0

    concerts.each do |concert|
      total += concert.attendance
    end

    total
  end

  def sale_rate
    all_attendance.to_f / all_capacity.to_f
  end

end
