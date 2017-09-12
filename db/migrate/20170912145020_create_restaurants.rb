class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :latitude
      t.integer :longitude
      t.string :address
      t.string :img_url

      t.timestamps
    end
  end
end
