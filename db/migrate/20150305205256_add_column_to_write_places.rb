class AddColumnToWritePlaces < ActiveRecord::Migration
  def change
    add_column :write_places, :user_id, :integer
  end
end
