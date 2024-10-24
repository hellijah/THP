class NomDeTaMigration < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :is_admin
      t.timestamps
    end
  end
end
