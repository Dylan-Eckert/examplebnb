class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.text :address
      t.text :conditional
      t.decimal :price

      t.timestamps
    end
  end
end
