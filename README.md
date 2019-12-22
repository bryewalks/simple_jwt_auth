# SimpleAuth
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'simple_auth'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install simple_auth
```

after install run
```bash
$ rails simple_auth:install:migrations
```

to create updated migrations file and then
```bash
$ rails db:migrate
```

in order to access gems provided routes add

  mount ActualizeAuth::Engine, at: "/auth"

to top of routes in your rails project

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
