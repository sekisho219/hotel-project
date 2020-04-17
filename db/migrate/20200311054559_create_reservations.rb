class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.datetime :checkin
      t.datetime :checkout
      t.string :transport
      t.integer :number

      t.timestamps
    end
  end
end
