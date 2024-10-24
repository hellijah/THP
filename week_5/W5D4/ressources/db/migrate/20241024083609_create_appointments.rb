class CreateAppointments < ActiveRecord::Migration[7.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, index: true, foreign_key: true
      t.belongs_to :patient, index: true, foreign_key: true
      t.timestamps
    end
  end
end
