class AddPriceToAssets < ActiveRecord::Migration[6.0]
  def change
    add_monetize :assets, :price, currency: { present: false }
  end
end
