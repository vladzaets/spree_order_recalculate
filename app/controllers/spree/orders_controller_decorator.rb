module Spree
  OrdersController.class_eval do
    include OrderRecalculate
    before_action :recalculate_order, only: [:edit]
  end
end