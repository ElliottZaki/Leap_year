
def leapyear?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 400 == 0 
    return true
  else
    return false
  end
  
end