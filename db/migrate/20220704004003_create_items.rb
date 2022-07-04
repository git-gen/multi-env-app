class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :sku, null: false
      t.integer :price, null: false
      t.integer :stock, null: false
      t.boolean :enabled, null: false, default: true

      t.timestamps
    end
  end
end
