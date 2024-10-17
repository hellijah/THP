require 'csv'

class SaveAsCSV
  def initialize(emails)
    @emails = emails
  end

  def save
    CSV.open('db/emails.csv', 'w') do |csv|
      @emails.each do |city, email|
        csv << [city, email]
      end
    end
  end
end