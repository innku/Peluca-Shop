class Cart < ActiveRecord::Base
  has_many :cart_items, :dependent => :destroy

  def total_price
    # cart_items.to_a.sum{|cart_item| cart_item.total_price}
    CartItem.joins(:wig).where(:cart_id => self.id).sum("quantity * price")
  end

  def add_cart_item(wig)
    current_cart_item = self.cart_items.where(:wig_id => wig.id).first
    if current_cart_item
      current_cart_item.quantity += 1
    else
      current_cart_item = CartItem.new(:wig_id => wig.id)
      cart_items << current_cart_item
    end
    current_cart_item
  end
end
