class AddStripeItemIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :stripe_item_id, :string
  end
end
