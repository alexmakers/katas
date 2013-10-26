require_relative './fizzbuzz'

describe 'FizzBuzz' do
  
  it 'replaces multiples of 3 with Fizz' do
    expect(fizzbuzz 3).to eq 'Fizz'
  end

  it 'replaces multiples of 5 with Buzz' do
    expect(fizzbuzz 5).to eq 'Buzz'
  end

  it 'replaces multiples of 3 AND 5 with FizzBuzz' do
    expect(fizzbuzz 15).to eq 'FizzBuzz'
  end

  it 'keeps all other numbers as they are' do
    expect(fizzbuzz 4).to eq 4
  end

  it 'returns the expected output for the numbers 1..100' do
    first_hundred = (1..100).map { |n| fizzbuzz(n).to_s }

    fixture_path = File.dirname(__FILE__) + '/first_hundred.txt'
    expected = IO.read(fixture_path).split("\n")

    expect(first_hundred).to eq expected
  end

end