class CreateUzers < ActiveRecord::Migration[7.2]
  def change
    create_table :uzers do |t|
      t.string :name

      t.timestamps
    end
  end
end