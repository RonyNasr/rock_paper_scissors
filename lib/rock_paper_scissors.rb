require('pry')

class String
  define_method (:beats?) do |hand_two|
    hand_one = self
    result = false
    if (hand_one.==(hand_two))
      result = "tie"
    elsif (hand_one.==("rock") && hand_two.==("scissors") ||
          hand_one.==("scissors") && hand_two.==("paper") ||
          hand_one.==("paper") && hand_two.==("rock") )
      result = true
    end
    result
  end
end
