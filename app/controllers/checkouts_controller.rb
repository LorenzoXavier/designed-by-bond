class CheckoutsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_cart, only: [:cancel]



  def show

    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer

    @checkout_session = current_user.payment_processor.checkout(
      mode: "payment",
      line_items: @cart.line_items.collect { |item| item.to_builder.attributes! },
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url
      )

    # @checkout_session = current_user.payment_processor.checkout(
    #   mode: "payment",
    #   line_items: @cart.collect { |item|

    #   item.price stripe_price_id
    #   item.quantity 1
    #    },
    #   )
  end

  def cancel
    current_user.set_payment_processor :stripe
    current_user.payment_processor.customer

    @checkout_session = current_user.payment_processor.checkout(
      mode: "payment",
      line_items: @cart.line_items.collect { |item| item.to_builder.attributes! },
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url
    )

  end

  def success
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil

    # end
    # </%= button_to 'Empty Cart', @cart, method: :delete, data: { confirm: "Are you sure? " }, class: "button is-danger" %>
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    # def set_cart
    #   @cart = Cart.find(params[:id])
    # end
end
