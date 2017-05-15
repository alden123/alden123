# entree = phrase
# sortie = phrase modifiée

def encrypt(sentence, number)
  letters = sentence.split("")
  alphabet = ("A".."B").to_a
  vowels = %w(A E I O U Y)
  # trouver l index de chaque élément dans map
  # assigner nouvel index = index - 3
  # trouver la nouvelle lettre
  # si non inclus dans array alphabet alors ignorer
  encrypted_array = letters.map do |letter|
    if alphabet.include?(letter)
      index = alphabet.index(letter)
      index_new = index - number
      alphabet[index_new]
    else
      letter
    end
  end
    return encrypted_array.join
end



# splitter la phrase d'entrée letter par letter
# créer un tableau avec l'alphabet
# itérer avec map pour modifier chaque élément
# join le tbleai transformé en une string

p encrypt("Salut")
