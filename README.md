# OnlyGoogleApis

[![Build Status](https://travis-ci.org/appaloosa-store/only_google_apis.svg)](https://travis-ci.org/appaloosa-store/only_google_apis)

Accept only request from Google API server.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'only_google_apis'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install only_google_apis

## Usage

Add it for example as a constraint in your `routes.rb`

```ruby
    namespace :api do
      constraints(OnlyGoogleApis) do
        resources :maps, only: :create
      end
    end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/only_google_apis/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Thanks

Thanks to Jesse Wolgamott for the [initial post on this subject](http://jessewolgamott.com/blog/2015/11/17/when-fake-googlebots-attack-your-rails-app/)
