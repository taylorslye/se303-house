class House

  def line(number)
    return "This is " + verse(number) + ".\n"
  end

  def verse(number)
    if number == 1
      return "the house that Jack built"
    else
      return "the malt that lay in " + verse(1)
    end
  end

end