# Converts Fahrenheit to Celsius
def ftoc(fahrenheit)
    return ((fahrenheit - 32) * 5.0 / 9.0).to_f
  end
  
  # Converts Celsius to Fahrenheit
  def ctof(celsius)
    return ((celsius * 9.0 / 5.0) + 32).to_f
  end