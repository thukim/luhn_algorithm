require 'luhn_algorithm/version'
require 'luhn_algorithm/validator'

module LuhnAlgorithm
  NUMBER_ONLY = /^\d+$/

  def self.valid?(value)
    value = value.to_s.reverse
    return false unless value.match(NUMBER_ONLY)
    arr = value.chars.map(&:to_i)
    (1...(arr.length)).step(2) do |index|
      arr[index] = (arr[index] * 2).divmod(10).sum
    end
    (arr.sum % 10).zero?
  end
end
