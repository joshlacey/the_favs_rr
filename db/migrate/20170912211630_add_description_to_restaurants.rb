class AddDescriptionToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :description, :string
    add_column :restaurants, :list_of_dishes, :string
  end
end
