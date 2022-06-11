module ItemsHelper
  def allowed_to_edit(item)
    user_signed_in? && current_user.id == item.user_id
    # || current_user.admin?
  end

  def product_availability(item)
    if item.quantity_available == "0"
      "Not in stock"
    else
      "In Stock"
    end
  end
end
