class CreateCharitysChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :charitys_choices do |t|
      t.references :asset, null: false, foreign_key: true
      t.references :charity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
