class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
