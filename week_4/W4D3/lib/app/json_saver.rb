require 'json'

class SaveAsJSON
  def initialize(emails)
    @emails = emails
  end

  def save
    File.open('db/emails.json', 'w') do |file|
      file.write(@emails.to_json)
    end
  end
end