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
    when 4
      "the cat that killed " + verse(3)
    when 5
      "the dog that worried " + verse(4)
    when 6
      "the cow with the crumpled horn that tossed " + verse(5)
    when 7
      "the maiden all forlorn that milked " + verse(6)
    when 8
      "the man all tattered and torn that kissed " + verse(7)
    end
  end

end