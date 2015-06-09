module Spree
  CheckoutController.class_eval do
    include OrderRecalculate
    before_action :recalculate_order, only: [:edit]
  end
end