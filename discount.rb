class Discount
  def get_discount(price)
    if price == ''
      'Price can\'t be empty'
    elsif (price.is_a? Integer) == false or price <0
      'Value not allowed'
    else
      case price
      when 0 .. 99
        0
      when 100 .. 199
        10
      when 200 .. 299
        20
      when 299 .. 399
        25
      else
        30
      end
    end
  end
end
