class Owner
  
  def name
    'Jean Faubert Dorancy'
  end
  
  def birthdate
    Date.new(1985, 12, 22)
  end
  
  def countdown
    today = Date.new
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    if birthday > today
      (birthday - today).to_i
    else
      (birthday.next_year - today).to_i
    end
  end
  
end
    