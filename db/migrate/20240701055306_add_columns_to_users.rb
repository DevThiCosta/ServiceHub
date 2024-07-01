class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :phone_number, :string
    add_column :users, :birth_date, :date
    add_column :users, :address, :string
    add_column :users, :avatar, :string
  end
end
