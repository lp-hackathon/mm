class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :location
      t.integer :user_id

      t.timestamps
    end

    add_index :profiles, :user_id
  end
end
