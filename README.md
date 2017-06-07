# Redash Ruby Client

A Ruby client for Redash APIs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "redash-ruby"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install redash-ruby

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Testing

```
# Prepare Redash on docker and set the initial configuration
./test/setup
```

### API TOKEN

we need to login to Redash to get API_TOKEN

```
docker exec -it redashruby_server_1 ./manage.py shell
>>> print(models.User.query.get(user_id).api_key)
```

```
REDASH_API_TOKEN=xxx REDASH_HOSTNAME=http://localhost:28080 bundle exec rake test
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tomoya55/redash-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Copyright and License

Copyright (c) 2017, Tomoya Hirano and Contributors.

This project is licensed under the [MIT License](http://opensource.org/licenses/MIT).
