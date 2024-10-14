require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees = [])
    @start_date = Time.parse(start_date) # Convert string in Time
    @duration = duration
    @title = title
    @attendees = attendees
  end
  
  def postpone_24h
    @start_date += 86400 # 86400 seconds = 24 hours
  end

  def end_date
    @start_date + (@duration * 60) # convert duration in seconds
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    !is_past?
  end

  def is_soon?
    @start_date <= Time.now + 1800 && !past? # 1800 seconds = 30 minutes
  end

  # Méthode pour afficher l'événement
  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date.strftime("%H:%M:%S %d/%m/%Y")}"
    puts "Durée : #{@duration} minutes"
    puts "Date de fin : #{end_date.strftime("%H:%M:%S %d/%m/%Y")}"
    puts "Invités : #{@attendees.join(', ')}"
  end

end