module Spree
  Order.class_eval do
    def update_with_line_items!
      update_needed = false
      line_items.includes(variant: [:prices]).each do |item|
        variant_price = item.variant.price_in(item.currency).amount
        
        if item.price != variant_price
          item.price = variant_price
          item.save
          update_needed = true
        end
      end
      update! if update_needed
    end
  end
end