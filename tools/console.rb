require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

kooks = Band.new('The Kooks', 'Rock')
beatles = Band.new('The Beatles', 'Rock')
english_beat = Band.new('English Beat', 'Ska')
aventura = Band.new('Aventura', 'Bachata')

msg = Venue.new('MSG', 'NYC', 5000)
met_life = Venue.new('Met Life Stadium', 'NJ', 3000)
carnegie_hall = Venue.new('Carnegie Hall', 'NYC', 1500)

concert1 = Concert.new(500, '1/1', kooks, msg)
concert2 = Concert.new(1000, '2/1', kooks, met_life)
concert3 = Concert.new(3000, '3/1', beatles, met_life)
concert4 = Concert.new(4800, '4/1', beatles, msg)
concert5 = Concert.new(1500, '5/1', beatles, carnegie_hall)
concert6 = Concert.new(900, '1/1', english_beat, carnegie_hall)
concert7 = Concert.new(2500, '1/1', english_beat, msg)
concert8 = Concert.new(5000, '1/1', aventura, msg)
concert9 = Concert.new(2600, '1/1', aventura, met_life)



binding.pry

0
