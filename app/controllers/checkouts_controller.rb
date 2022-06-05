class CheckoutsController < ApplicationController
  before_action :authenticate_user!



  def show

    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer

    @checkout_session = current_user.payment_processor.checkout(
      mode: "payment",
      line_items: @cart.line_items.collect { |item| item.to_builder.attributes! },
      )

    # @checkout_session = current_user.payment_processor.checkout(
    #   mode: "payment",
    #   line_items: @cart.collect { |item|

    #   item.price stripe_price_id
    #   item.quantity 1
    #    },
    #   )
  end
end
