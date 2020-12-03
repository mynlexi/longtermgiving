module CurrencyHelper 
  def money_format(money) 
    # "%.2f" % money
    number_to_currency(money, locale: :de)
  end
end