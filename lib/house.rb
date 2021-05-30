class House

  def line(number)
    return "This is the " + nounandverbs.first(number - 1).reverse.join + "house that Jack built.\n"
  end

  def nounandverbs
    [
      "malt that lay in the ",
      "rat that ate the ",
      "cat that killed the ",
      "dog that worried the ",
      "cow with the crumpled horn that tossed the ",
      "maiden all forlorn that milked the ",
      "man all tattered and torn that kissed the ",
      "priest all shaven and shorn that married the ",
      "rooster that crowed in the morn that woke the ",
      "farmer sowing his corn that kept the ",
      "horse and the hound and the horn that belonged to the "
    ]
  end

  def verse(number)
    case number
    when 1
      ''
    when 2
      nounandverb[0]
    when 3
      nounandverb[1] + nounandverb[0]
    when 4
      "cat that killed the rat that ate the malt that lay in the "
    when 5
      "dog that worried the cat that killed the rat that ate the malt that lay in the "
    when 6
      "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
    when 7
      "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
    when 8
      "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
    when 9
      "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
    when 10
      "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
    when 11
      "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
    when 12
      "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the "
    end
  end


  
  def recite
    1.upto(12).collect{ |i|
      line(i)
    }.join("\n")
  end
end