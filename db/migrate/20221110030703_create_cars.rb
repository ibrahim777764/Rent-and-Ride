class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :image
      t.text :description
      t.decimal :price
      t.string :location
      t.integer :duration
      t.boolean :rented, default: false
      t.timestamps
    end
  end
end
