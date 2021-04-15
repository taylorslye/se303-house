class House

  def line(number)
    return "This is " + verse(number) + ".\n"
  end

  def verse(number)
    case number
    when 1
      "the house that Jack built"
    when 2
      "the malt that lay in " + verse(1)
    when 3
      "the rat that ate " + verse(2)
    end
  end

end