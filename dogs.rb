require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end

def name_lengths(dogs)
  dog_name_lengths = []

  dogs.each do |names|
    dog_name_lengths << names.length
  end
  dog_name_lengths
  end
def reverse_dog_names(dogs)

  reverse_dog_name = []
  dogs.each do |reverse|
    reverse_dog_name << reverse.reverse
  end
  reverse_dog_name
end

def first_three_dogs_with_each(dogs)

dogs[0..2]

end

def first_three_dogs_without_each(dogs)

  dogs[0..2]

end

def reverse_case_dog_names(dogs)
  reverse_case_dog_names = []

  dogs.each do |reverse_case|
    reverse_case_dog_names << reverse_case.swapcase

  end
  reverse_case_dog_names

end

def sum_of_all_dog_name_lengths(dogs)

  sum = 0

  dogs.each do |dog_name|
    sum = sum + dog_name.length
  end
  sum
end

def dogs_with_long_names(dogs)
  long_names = []

  dogs.each do |dog|
    if dog.length > 4
      long_names.push(true)
      else long_names.push(false)
    end
  end

  long_names

end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

another_dog_array = ["Frido"]

check("how_many_dogs", how_many_dogs(another_dog_array) == 1)



check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

