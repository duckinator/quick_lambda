# Spinny::QuickLambda

Nice lambdas, kind of like what Scala offers. (Name courtesy of [macropy](https://github.com/lihaoyi/macropy#quick-lambdas).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spinny-quick_lambda'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spinny-quick_lambda

## Usage

```ruby
require 'spinny/quick_lambda'

p [1, 2, 3, 4].map(& _ + 2 + 3 ) #=> [6, 7, 8, 9]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/spinny-quick_lambda/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
