class LineItem < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  def total_price
    item.price.to_i * quantity.to_i
  end

  def to_builder
    @me = Jbuilder.new do |product|
      product.price Item.find(item_id).stripe_price_id
      product.quantity quantity
    end
  end
end
