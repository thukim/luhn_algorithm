# LuhnAlgorithm

Inspired after reading about Luhn Algorithm (or Modulus 10 Algorithm) article (https://en.wikipedia.org/wiki/Luhn_algorithm) from Wiki, I made this gem to easily validate a variety of identification numbers, for example Social Insurance numbers, or Credit card numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'luhn_algorithm'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install luhn_algorithm

## Usage

```
class Member
  include ActiveModel::Model

  attr_accessor :social_insurance_number
  validates_luhn_algorithm_of :social_insurance_number
end
```

OR

```
class Member
  include ActiveModel::Model

  attr_accessor :social_insurance_number
  validates :social_insurance_number, luhn_algorithm: true
end
```
person = Member.new(social_insurance_number: 'a valid number')
person.valid? # => true

You can also pass in a customized message when validating an attribute with Luhn Algorithm, for example

```
validates_luhn_algorithm_of :social_insurance_number, message: 'is not in the correct format'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thukim/luhn_algorithm. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LuhnAlgorithm project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/thukim/luhn_algorithm/blob/master/CODE_OF_CONDUCT.md).
