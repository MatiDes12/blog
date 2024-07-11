class AddDetailToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :postal_code, :string
    add_column :users, :gender, :string
    add_column :users, :medical_history, :text
  end
end
