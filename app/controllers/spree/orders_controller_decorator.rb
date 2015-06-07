module Spree
  OrdersController.class_eval do

    def edit
      @order = current_order || Order.incomplete.find_or_initialize_by(guest_token: cookies.signed[:guest_token])
      @order.update_with_line_items!
      associate_user
    end

  end
end