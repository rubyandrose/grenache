class AddDrinkCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :drink_count, :integer
  end
end
