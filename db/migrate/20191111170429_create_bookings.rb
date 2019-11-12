class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :renter, foreign_key: { to_table: :users}
      t.references :mom, foreign_key: true
      t.integer :price


      t.timestamps
    end
  end
end
