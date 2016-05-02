class Discount
  def get_discount(price)
    imposto = case price
    when (0..99) then 0
    when (100..199) then 10
    when (200..299) then 20
    when (300..399) then 25
    else 30
    end
  end
end
