class CreateWritePlaces < ActiveRecord::Migration
  def change
    create_table :write_places do |t|
      t.string :name
      t.date :date
      t.text :text

      t.timestamps
    end
  end
end
