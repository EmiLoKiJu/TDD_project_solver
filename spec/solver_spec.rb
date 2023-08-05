require_relative '../solver.rb'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  context '#factorial' do
    it 'should return the right value when given an integer greater than 1' do
      expect(solver.factorial(3)).to eq(6)
      expect(solver.factorial(8)).to eq(40320)
    end

    it 'should return 1 when the number given is 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'should return -1 when the number given is less than 0' do
      expect(solver.factorial(-5)).to eq(-1)
    end
  end

  context '#reverse' do
    it 'should return the string in reverse' do
      expect(solver.reverse('word')).to eq('drow')
      expect(solver.reverse('aleluyah')).to eq('hayulela')
    end
  end

  context '#fizzbuzz' do
    it 'should return fizz when N is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
      expect(solver.fizzbuzz(33)).to eq('fizz')
    end

    it 'should return buzz when N is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(50)).to eq('buzz')
      expect(solver.fizzbuzz(25)).to eq('buzz')
    end

    it 'should return fizzbuzz when N is divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(75)).to eq('fizzbuzz')
    end

    it 'should return N when N is not divisible by 3 or 5' do
      expect(solver.fizzbuzz(8)).to eq('8')
      expect(solver.fizzbuzz(34)).to eq('34')
      expect(solver.fizzbuzz(82)).to eq('82')
    end
  end
end