class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :wig

  def total_price
    quantity * wig.price
  end

  def as_json(options={})
    super(options.merge(:methods => :total_price, :only => [:id, :quantity], :include => {:wig => {:only => :price}}))
  end
end
