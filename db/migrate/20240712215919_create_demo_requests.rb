class CreateDemoRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :demo_requests do |t|
      t.string :full_name
      t.string :email
      t.string :organization
      t.string :role
      t.text :areas_of_interest
      t.text :additional_notes

      t.timestamps
    end
  end
end
