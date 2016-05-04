class Discount
  def get_discount(price)
    if price == ''
      'Price can\'t be empty'
    elsif price <0
      'Value not allowed'
    else
      discount = case price
      when 0 .. 99
        0
      when 100 .. 199
        10
      when 200 .. 299
        20
      when 300 .. 399
        25
      else
        30
      end
    end
  end
end
