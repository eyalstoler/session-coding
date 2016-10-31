class Animal
  attr_accessor :name
  attr_accessor :color
  
  def initialize(name, color)
   @name = name
   @color = color
  end
  
  # By overriding to_s method I actually decide how the instance will be displaed when running "puts" or "print"
  # http://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html
  def to_s
  "The #{@color} #{@name}"
  end

  def wow!
    puts "Wow! a #{@color} #{@name}!"
  end
end

# Notice this hash uses the new symbol syntax: {some_symbol: some_object}
animals = {
  rabbit: "gray",
  mouse:  "gray",
  deer:  "brown",
  bear:  "brown",
  sheep:  "white",
  flamingo:  "pink",
  beetle:  "red",
  duck:  "white",
  ant:  "black",
  donkey:  "brown",
  dolphin: "gray"
}

animal_list = animals.each_with_object([]) { |(key, value), animals| animals << Animal.new(key.to_s, value) }

puts "\n1) Animals with less than 5 characters in name:"
puts animal_list.select {|animal| animal.name.length < 5}

puts "\n2) Animals of brown color:"
puts animal_list.select {|animal| animal.color == "brown"}

puts "\n3) Printing 'Wow!' for gray animals only:"
animal_list.each { |animal| animal.wow! if animal.color =="gray" }
