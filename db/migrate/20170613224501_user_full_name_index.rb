class UserFullNameIndex < ActiveRecord::Migration[5.0]
  def change
    add_index(:users, :full_name, name: "index_users_on_fullname")
  end
end
