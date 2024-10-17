require 'google_drive'

class SaveAsSpreadsheet
  def initialize(emails)
    @emails = emails
  end

  def save
    session = GoogleDrive::Session.from_config("config.json")  # Fichier de configuration pour accéder à ton compte Google
    spreadsheet = session.create_spreadsheet("Emails Val d'Oise")
    worksheet = spreadsheet.worksheets[0]
    
    # Enregistre les données : Colonne A pour les villes, Colonne B pour les emails
    @emails.each_with_index do |(city, email), index|
      worksheet[index + 1, 1] = city
      worksheet[index + 1, 2] = email
    end
    worksheet.save
  end
end