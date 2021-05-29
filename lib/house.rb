class House

  def line(number)
    return "This is " + verse(number) + ".\n"
  end

  def verse(number)
    case number
    when 1
      "This is the house that Jack built.\n"
    end
    when 2
      "This is the malt that lay in the house that Jack built.\n"
    end
  end
  
  def recite
    1.upto(12).collect{ |i|
      line(i)
    }.join("\n")
  end
end