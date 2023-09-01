class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.decimal :price
      t.string :address
      t.decimal :area
      t.integer :rooms
      t.integer :bathrooms

      t.timestamps
    end
  end
end
