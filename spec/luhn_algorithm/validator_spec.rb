class SampleModel
  include ::ActiveModel::Validations

  attr_accessor :number1, :number2

  validates_luhn_algorithm_of :number1
  validates :number2, luhn_algorithm: true
end

RSpec.describe ActiveModel::Validations::LuhnAlgorithmValidator do
  let(:model) { SampleModel.new }

  context 'validates attributes based on luhn_algorithm' do
    it 'calls LuhnAlgorithm.valid?' do
      model.number1 = 6_011_111_111_111_118
      model.number2 = '4111111111111111'
      expect(LuhnAlgorithm).to receive(:valid?).and_call_original.twice
    end
  end
end
