require_relative './roman_numerals_to_numbers'

describe 'roman numerals to numbers' do

  context 'single numerals' do
    example 'I becomes 1' do
      expect(roman_numeral_to_number('I')).to eq 1
    end

    example 'V becomes 5' do
      expect(roman_numeral_to_number('V')).to eq 5
    end

    example 'X becomes 10' do
      expect(roman_numeral_to_number('X')).to eq 10
    end

    example 'L becomes 50' do
      expect(roman_numeral_to_number('L')).to eq 50
    end

    example 'C becomes 100' do
      expect(roman_numeral_to_number('C')).to eq 100
    end

    example 'M becomes 1000' do
      expect(roman_numeral_to_number('M')).to eq 1000
    end
  end

  context 'appended numerals' do
    example 'III becomes 3' do
      expect(roman_numeral_to_number('III')).to eq 3
    end

    example 'XVII becomes 17' do
      expect(roman_numeral_to_number('XVII')).to eq 17
    end

    example 'LII becomes 52' do
      expect(roman_numeral_to_number('LII')).to eq 52
    end
  end

  context 'prepended numerals' do
    example 'IV becomes 4' do
      expect(roman_numeral_to_number('IV')).to eq 4
    end

    example 'XIX becomes 19' do
      expect(roman_numeral_to_number('XIX')).to eq 19
    end
  end

  describe 'complex examples' do
    example 'XXXVIII becomes 38' do
      expect(roman_numeral_to_number('XXXVIII')).to eq 38
    end

    example 'XCIX becomes 99' do
      expect(roman_numeral_to_number('XCIX')).to eq 99
    end

    example 'MCMLXXXVIII becomes 1988' do
      expect(roman_numeral_to_number('MCMLXXXVIII')).to eq 1988
    end
  end

  it 'returns the expected output for the numbers 1..100' do
    fixture_path = File.dirname(__FILE__) + '/first_3k.txt'
    numerals = IO.read(fixture_path).split("\n")

    (1..3000).each do |n|
      expect(roman_numeral_to_number(numerals[n-1])).to eq n
    end
  end

end