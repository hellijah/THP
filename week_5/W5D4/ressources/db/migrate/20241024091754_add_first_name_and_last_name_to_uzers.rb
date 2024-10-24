class AddFirstNameAndLastNameToUzers < ActiveRecord::Migration[7.2]
  def change
    add_column :uzers, :first_name, :string
    add_column :uzers, :last_name, :string
  end
end
