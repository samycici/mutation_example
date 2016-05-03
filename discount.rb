class Discount
  def get_discount(price)
    if price <= 0
      'Value not allowed'
    elsif price >0 and price <100
      discount = 0
    elsif price >=100 and price <200
      discount = 10
    elsif price >=200 and price <300
      discount = 20
    elsif price >=300 and price <400
      discount = 25
    else
      discount = 30
    end
  end
end
