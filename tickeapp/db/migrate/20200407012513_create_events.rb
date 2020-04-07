class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :starDate
      t.datetime :endDate
      t.references :event_venue, foreign_key: true

      t.timestamps
    end
  end
end
