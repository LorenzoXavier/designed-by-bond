class AddCurrencyToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :currency, :string, default: "GBP"
  end
end
