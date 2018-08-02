# OO Review

For this assignment, you will be creating a domain to track contributions that Bands, Venues, and Concerts.

Your goal is to build out all of the methods listed below in 'deliverables'. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

  --  Make sure you are testing your code as you go! --

#### Instructions

The below are the methods that must be present on your models. Feel free to build out any helper methods, if needed.

Band has many Concerts
Venue has many Concerts

Concert belongs to a Venue
Concert belongs to a Band

Band has many Venues, through Concerts
Venues has many Bands, through Concerts

## Deliverables

Build the following methods on the Band class

<!-- + Band.all
  + returns an array of all bands -->
<!-- + Band#concerts
  + returns a list of concerts at a specific band -->
<!-- + Band#venues
  + should return a list of venues for a specific band -->
<!-- + Band#add_concert(date, attendance, venue)
  + given a date, an attendance, and a venue, creates a new concert and associates it with that band and venue -->
<!-- + Band#update_attendance(concert, number)
  + changes the attendance for a concert given a number (only if the concert belongs to the band) -->
<!-- + Band#average_sale_rate -->

Build out the following methods on the Venue class

<!-- + Venue.all
  + returns an array of all venues -->
<!-- + Venue.find_by_location(location)
  + given a string of a location, returns all venues that match that location -->
<!-- + Venue#concert_dates
  + returns a list of the concert dates for a specific venue -->
<!-- + Venue#bands
  + returns a list of bands for a specific venue -->
<!-- + Venue#average_attendance
  + returns the average attendance for that specific venue -->

Build out the following methods on the Concert class

<!-- + Concert.all
  + returns an array of all concerts -->
<!-- + Concert#band
  + returns the band for that given concert
+ Concert#venue
  + returns the venue for that given concert -->
<!-- + Attendance should be defaulted to nil -->
