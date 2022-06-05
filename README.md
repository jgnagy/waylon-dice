# Waylon::Dice

This is a Skill for the [Waylon Bot Framework](https://github.com/jgnagy/waylon) that allows rolling some dice. It supports either 2x d6 dice _or_ you can specify a single die of arbitrary size.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'waylon-dice'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install waylon-dice

Finally, require the newly installed code in your bot (usually in your `plugins.rb` file under the `# Skills` section):

```ruby
require "waylon/dice"
```

## Usage

The following skills are available by either direct messaging your bot or by `@` mentioning them:

* `roll some dice`:
  * Description: Rolls two d6 dice
  * Parameters: None
  * Permissions: `*`
  * Alternatives:
    * `dice me`
* `roll a d<N+>`
  * Description: Roll a specific sized die
  * Parameters:
    * `<N+>` : A integer; example: `20`, as in `roll a d20`
* Permissions: `*`
* Alternatives: None

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jgnagy/waylon-dice.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
