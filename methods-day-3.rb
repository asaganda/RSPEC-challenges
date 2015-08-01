def array_doubler(array)
  #should return an array with every element doubled
  #doubling implementation goes here

  # .map maps over each value in the array and does whatever task to each value,
  # in this case, multiplying each value by 2
  array = array.map{|i| i * 2}

  #you must leave this here in the final implementation
  #but you can comment it out to get your tests
  #to pass when working on the doubling part
  array.shuffle
end

def squarer(array)
  # raises an error if the items in the array aren't integers..such as floats(3.5)
  raise ArgumentError unless array.all? { |i| i.is_a?(Integer)}

  array.map{|i| i * i}

  #for this one, you should test 3 things
  #
  #1. the actual return value
  #2. a test that confirms that all elements in the result
  #   are positive
  #3. a test that confirms that an error is raised if
  #   something other than an integer is a member of the
  #   input array  (remember that to throw an error you can
  #   use the `raise` method)

end

def random_adder(num)
  # this method returns the input increased by
  # a random amount between 1 and 10.
  # Your test should confirm that the result falls
  # within the acceptable range.

  # a random number between 1 and 10 gets added to "num"
  num + rand(1..10)
end

def returns_countable(n)
  # this method takes a string either returns an array or a string
  # your test should confirm that the result is one
  # of these and also responds to the `.length` method

  if rand(10) % 2 == 0
    n
  else
    n.split
  end
end
