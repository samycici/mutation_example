class Discount
  def get_discount(price)
    if price <= 0
      return 'Value not allowed'
    elsif price >0 and price <100
      discount = 0
    else price >=100 
      discount = 30
    end
  end
end
