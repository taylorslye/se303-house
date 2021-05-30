class House

  def initialize
    @nouns = [
      "malt that ",
      "rat that ",
      "cat that ",
      "dog that ",
      "cow with the crumpled horn that ",
      "maiden all forlorn that ",
      "man all tattered and torn that ",
      "priest all shaven and shorn that ",
      "rooster that crowed in the morn ",
      "farmer sowing his corn that ",
      "horse and the hound and the horn that "
    ]
    @verbs = [
      "lay in the ",
      "ate the ",
      "killed the ",
      "worried the ",
      "tossed the ",
      "milked the ",
      "kissed the ",
      "married the ",
      "that woke the ",
      "kept the ",
      "belonged to the "
    ]
  end

  def line(number)
    return "This is the " + middle_section(number) + "house that Jack built.\n"
  end

  def middle_section(number)
    current_nouns = @nouns.first(number - 1).reverse
    current_verbs = @verbs.first(number - 1).reverse
    return (current_nouns.zip(current_verbs).map{ |i| i.join}).join

  end
  
  def recite
    1.upto(12).collect{ |i|
      line(i)
    }.join("\n")
  end
end

class PirateHouse < House

  def line(number)
    return "Thar be the " + middle_section(number) + "house that Jack built.\n"
  end

end

class RandomHouse < House

  def initialize
    super
    @nouns = @nouns.shuffle
    @verbs = @verbs.shuffle
  end

end

class RandomPirateHouse < RandomHouse

  def line(number)
    return "Thar be the " + middle_section(number) + "house that Jack built.\n"
  end

end