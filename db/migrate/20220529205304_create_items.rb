class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :price
      t.integer :review_rating, default: 0
      t.integer :review_count, default: 0
      t.string :brand
      t.string :product_code
      t.string :availability
      t.string :quantity_available
      t.string :description

      t.timestamps
    end
  end
end
