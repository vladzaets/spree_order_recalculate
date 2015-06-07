module Spree
  CheckoutController.class_eval do

    def edit
      @order.update_with_line_items!
      associate_user
    end

  end
end