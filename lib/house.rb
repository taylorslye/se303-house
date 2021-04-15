class House

  def line(number)
    return "This is " + verse(number) + ".\n"
  end

  def verse(number)
    if number == 1
      return "the house that Jack built"
    elsif number == 2
      return "the malt that lay in " + verse(1)
    elsif number == 3
      return "the rat that ate " + verse(2)
    end
  end

end