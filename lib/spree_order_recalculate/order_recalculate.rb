module OrderRecalculate
  def recalculate_order
    @order = current_order || Spree::Order.incomplete.find_or_initialize_by(guest_token: cookies.signed[:guest_token])
    @order.update_with_line_items!
  end
end