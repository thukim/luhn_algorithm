require 'active_model'

module ActiveModel
  module Validations
    # active model validator for Luhn Algorithm
    class LuhnAlgorithmValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return if LuhnAlgorithm.valid?(value)
        record.errors.add(attribute, options[:message] || :invalid)
      end
    end

    module HelperMethods
      def validates_luhn_algorithm_of(*attr_names)
        validates_with LuhnAlgorithmValidator, _merge_attributes(attr_names)
      end
    end
  end
end
