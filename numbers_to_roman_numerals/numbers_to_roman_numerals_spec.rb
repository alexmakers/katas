require_relative './numbers_to_roman_numerals'

describe 'numbers to roman numerals' do

  context 'single numerals' do
    example '1 becomes I' do
      expect(number_to_roman_numeral(1)).to eq 'I'
    end

    example '5 becomes V' do
      expect(number_to_roman_numeral(5)).to eq 'V'
    end

    example '10 becomes X' do
      expect(number_to_roman_numeral(10)).to eq 'X'
    end

    example '50 becomes L' do
      expect(number_to_roman_numeral(50)).to eq 'L'
    end

    example '100 becomes C' do
      expect(number_to_roman_numeral(100)).to eq 'C'
    end

    example '1000 becomes M' do
      expect(number_to_roman_numeral(1000)).to eq 'M'
    end
  end

  context 'appended numerals' do
    example '3 becomes III' do
      expect(number_to_roman_numeral(3)).to eq 'III'
    end

    example '17 becomes XVII' do
      expect(number_to_roman_numeral(17)).to eq 'XVII'
    end

    example '52 becomes LII' do
      expect(number_to_roman_numeral(52)).to eq 'LII'
    end
  end

  context 'prepended numerals' do
    example '4 becomes IV' do
      expect(number_to_roman_numeral(4)).to eq 'IV'
    end

    example '19 becomes XIX' do
      expect(number_to_roman_numeral(19)).to eq 'XIX'
    end
  end

  describe 'complex examples' do
    example '38 becomes XXXVIII' do
      expect(number_to_roman_numeral(38)).to eq 'XXXVIII'
    end

    example '99 becomes XCIX' do
      expect(number_to_roman_numeral(99)).to eq 'XCIX'
    end

    example '1988 becomes MCMLXXXVIII' do
      expect(number_to_roman_numeral(1988)).to eq 'MCMLXXXVIII'
    end
  end

  it 'returns the expected output for the numbers 1..100' do
    fixture_path = File.dirname(__FILE__) + '/first_3k.txt'
    expected = IO.read(fixture_path).split("\n")

    (1..3000).each do |n|
      expect(number_to_roman_numeral(n)).to eq expected[n-1]
    end
  end

end