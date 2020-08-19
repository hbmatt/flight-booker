class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.references :from_airport
      t.references :to_airport
      t.datetime :departure_time
      t.integer :duration

      t.timestamps
    end
  end
end
