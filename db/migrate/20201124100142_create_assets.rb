class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :stock_symbol
      t.text :description
      t.string :asset_type

      t.timestamps
    end
  end
end
