SpreeOrderRecalculate
===============

As spree doesn't update line items price when products price changes, this extension do it. 

How it works:

* When user goes to cart or checkout page:
  * If price of variant has changed, the price in cart will change too.
  * If variant has been deleted, it will be deleted from cart too.
  * Order will be recalculated if anything has changed.

Tested with spree 3.0.2.beta.
Also it should be 100% compatible with spree 2.4.

This extension is not overriding any built-in methods, but including a new one to Order model and a callback to orders and checkout controllers, so it should be very safe and compatible with other spree customizations.

Installation
------------

Add spree_order_recalculate to your Gemfile:

```ruby
gem 'spree_order_recalculate', github: 'vladzaets/spree_order_recalculate', branch: '3-0-stable'
```

That's it!

Copyright (c) 2015 Vladislav Zaets, released under the New BSD License
