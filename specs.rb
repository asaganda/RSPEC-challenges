require './methods.rb'
require './methods-day-2.rb'
require './methods-day-3.rb'

RSpec.configure do |config|
  config.color = true
end

# First methods.rb tests

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