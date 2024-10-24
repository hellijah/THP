class CreateStrolls < ActiveRecord::Migration[7.2]
  def change
    create_table :strolls do |t|
      t.references :dogsitter, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
