require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees = [])
    @start_date = Time.parse(start_date) # Convert string in Time
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def

  end

  def

  end

end