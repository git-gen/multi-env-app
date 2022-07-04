class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: { on_delete: :cascade }
      t.string :title, null: false
      t.string :sku, null: false
      t.integer :price, null: false
      t.integer :count, null: false

      t.timestamps
    end
  end
end
