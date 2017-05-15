class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :title
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
