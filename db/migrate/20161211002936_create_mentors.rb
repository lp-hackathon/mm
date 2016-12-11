class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|

      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
