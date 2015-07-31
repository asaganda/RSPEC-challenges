require './methods.rb'
require './methods-day-2.rb'
require './methods-day-3.rb'

RSpec.configure do |config|
  config.color = true
end

# First, methods.rb tests

describe '#sum_array' do
  it 'should sum up the array, ignoring nils' do
    arr = [nil, nil, 1, 2, nil, 4]
    expect(sum_array(arr)).to eq(7)
  end
end

describe '#titleize' do
  it 'should put a string into title case' do
    str = 'a dream of spring'
    expect(titleize(str)).to eq('A Dream of Spring')
  end

  it 'it should downcase any non-capitalizable words if they come in as capitals' do
    str = "a dream of SPRING"
    expect(titleize(str)).to eq('A Dream of Spring')
  end
end

describe '#interpose' do
  it 'interposes two arrays by element' do
    a1 = [1, 2, 3]
    a2 = [:a, :b, :c]

    expect(interpose(a1, a2)).to eq([[1, :a],
                                     [2, :b],
                                     [3, :c]])
  end
end

# Second, methods-day-2.rb

describe '#repeat' do
  it "repeats a string n times, separated by a space" do
    expect(repeat("Andrew", 3)).to eq "Andrew Andrew Andrew"
  end
end

describe '#interleave' do
  it "interleaves two arrays into a single flat array" do
    a1 = [1, 2, 3]
    a2 = [:a, :b, :c]

    expect(interleave(a1, a2)).to eq([1, :a,
                                      2, :b,
                                      3, :c])
  end
end

describe '#hide_in_shuffle' do
  it "puts a given letter in a shuffled array" do
    expect(hide_in_shuffle("foo")).to include("foo")
  end
end

describe '#shuffler' do
  it "calls shuffle n times on an array" do
    array = [1, 2, 3]
    expect(array).to receive(:shuffle).exactly(3).times
    shuffler(array, 3)
  end
end

describe Doubler do
  it '#double doubles the number given' do
    doubler = Doubler.new
    expect(doubler.double(2)).to eq(4)
  end
end

describe CashDoubler do
  it '#double_cash doubles a monetary value' do
    doubler = Doubler.new
    cd = CashDoubler.new(doubler)
    expect(cd.double_cash('$2')).to eq('$4')
  end

  it 'sets the doubler to complete' do
    doubler = Doubler.new
    cd = CashDoubler.new(doubler)

    # CashDoubler doesn't care what doubler
    # does when it gets .complete! called on it
    # it just wants to make sure it calls it
    expect(doubler).to receive(:complete!)
    cd.double_cash('$4')
  end
end

