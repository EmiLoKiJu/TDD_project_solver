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
end