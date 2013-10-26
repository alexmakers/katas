require_relative './money_to_coins'

describe 'money to coins' do
  it 'should give the fewest number of coins needed to reach a particular amount for all test cases' do
    fixture_path = File.dirname(__FILE__) + '/test_cases.txt'
    cases = IO.read(fixture_path).split("\n")

    cases.each do |c|
      amount, expected = c.split(' = ')
      expect(money_to_coins(amount)).to eq expected
    end
  end
end