class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.references :charity, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :asset, null: false, foreign_key: true
      t.integer :donation_amount
      t.integer :quantity
      t.string :symbol
      t.string :order_type
      t.integer :limit_price
      t.integer :stop_price
      t.string :time_in_force

      t.timestamps
    end
  end
end
