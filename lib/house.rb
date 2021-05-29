class House

  def line(number)
    return "This is " + verse(number) + ".\n"
  end

  def verse(number)

  end
  
  def recite
    1.upto(12).collect{ |i|
      line(i)
    }.join("\n")
  end
end