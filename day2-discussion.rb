# 4/2/19

# 1
# nil


# 2
# if name is Steven, "OMG, He's the worst"
# if name is not Steven, "You cool"


# 3
array.map do |fruits|
  fruits.start_with?("a")
end


# 4
def word_count (sentence)
  sentence.split.length
end


# 5
# return nil
# puts out the setence


# 6
# puts cat
# returns nil


# 7
# puts "cat"
# returns nil


# 8
# Type error


# 9
foods = {"pie" => "delicious", "broccoli" => "not delicious",
"carrots" => "not delicious", "apples" => "delicious",
"peanut butter" => "delicious"}

def return_delicious(foods)
  foods.each do |food, taste|
    if taste == "delicious"
      puts food
    end
  end
end


# 10
def delete_nasty(foods)
  foods.reject do |food, taste|
    taste == "not delicious"
  end
end


# 11
# returns original array


# 12
archer = {
     "name" => "Sterling Mallory Archer",
     "co-workers"=> ["Lana Kane", "Cyril Figgis", "Cheryl Tunt", "Pam Poovey", "Dr Krieger"],
     "favorite_drink" => "Bloody Mary",
     "Quotes" => ["I swear to god, I had something for this", "Phrasing", "Boop", "Danger Zone", "Read a book", "Do you not?", "Can't or won't?"]
 }

 def quote(archer)
   # archer["Quotes"][rand(0..6)]
   puts archer["Quotes"][rand(0...archer["Quotes"].length)]
 end
