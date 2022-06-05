
class Item < ApplicationRecord
  mount_uploader :image, ProductImageUploader

  before_destroy :not_referenced_by_any_line_item
  has_many :line_items
  belongs_to :user, optional: true

  validates :title, :price, :brand, :product_code, :quantity_available, :description, presence: true
  # validates :description,length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed."}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed."}
  validates :price, length: { maximum: 7 }

  BRAND = %w{ Yanma Mercury }
  AVAILABILITY = %w{ Available Unavailable }

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end


  # create stripe item and assign to this item
  after_create do
    item = Stripe::Product.create(name: title)
    price = Stripe::Price.create(product: item, unit_amount: self.price * 100, currency: self.currency)
    update(stripe_item_id: item.id, stripe_price_id: price.id)
  end

  # stripe keeps items and prices separately.
  # updating local prices would require to update or create stripe prices.
  # this is all additional complexity.
  # better just create new items.

  # after_update :create_and_assign_new_stripe_price, if: :saved_change_to_price?
  # after_update :create_and_assign_new_stripe_price, if: :saved_change_to_currency?

  # def create_and_assign_new_stripe_price
  #   price = Stripe::Price.create(item: self.stripe_item_id, unit_amount: self.price, currency: self.currency)
  #   update(stripe_price_id: price.id)
  # end

end
