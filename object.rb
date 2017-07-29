class Pet
  attr_accessor :name, :owner

end

class Cat < Pet

  attr_accessor :breed

  def meow
    return "Meow!"
  end
end

class Dog < Pet

  attr_accessor :breed

  def bark
    return "Woof!"
  end
end

class Bird < Pet

  def tweet
    return "Tweet!"
  end
end

my_cat = Cat.new
my_cat.name= "Allie"
catname = my_cat.name
my_cat.breed= "Maine Coon"
catbreed = my_cat.breed
puts "#{catname}, the #{catbreed} says #{my_cat.meow}"

puts my_cat.inspect

my_bird = Bird.new
my_bird.name= "Birdie"
birdname = my_bird.name
puts "#{birdname} says #{my_bird.tweet}"
puts my_bird.inspect