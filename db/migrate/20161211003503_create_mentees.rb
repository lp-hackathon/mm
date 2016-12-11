class CreateMentees < ActiveRecord::Migration
  def change
    create_table :mentees do |t|

      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
