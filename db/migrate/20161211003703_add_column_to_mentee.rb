class AddColumnToMentee < ActiveRecord::Migration
  def change
    add_column :mentees, :name, :string
    add_column :mentees, :bio, :string
  end
end
