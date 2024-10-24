class AddCityToPatients < ActiveRecord::Migration[7.2]
  def change
    add_reference :patients, :city, null: false, foreign_key: true
  end
end
