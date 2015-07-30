def array_doubler(array)
  #should return an array with every element doubled
  #doubling implementation goes here

  #you must leave this here in the final implementation
  #but you can comment it out to get your tests
  #to pass when working on the doubling part
  array.shuffle
end

def squarer(array)

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
