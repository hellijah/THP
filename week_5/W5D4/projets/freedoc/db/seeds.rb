# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

City.create(name: "Paris")
City.create(name: "Lyon")

Doctor.create(first_name: "Alice", last_name: "Dupont", specialty: "Cardiologue", zip_code: "75001", city_id: 1)
Doctor.create(first_name: "Bob", last_name: "Martin", specialty: "Dermatologue", zip_code: "69001", city_id: 2)

Patient.create(first_name: "John", last_name: "Doe", city_id: 1)
Patient.create(first_name: "Jane", last_name: "Smith", city_id: 2)

Appointment.create(date: DateTime.now, doctor_id: 1, patient_id: 1)
Appointment.create(date: DateTime.now + 1.day, doctor_id: 2, patient_id: 2)