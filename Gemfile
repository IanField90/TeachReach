source 'https://rubygems.org'

ruby "2.1.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Use postgresql as the database for Active Record
gem 'pg'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  # Annotations of schema information into models;
  # run "bundle exec annotate --position before" after each schema change to keep it up to date
  gem "annotate"
end

group :development, :test do
  # Ruby objects as test data
  gem "factory_girl_rails"

  # Testing with rspec
  gem 'rspec-rails', '~> 2.0'
  gem 'minitest'

  # Test coverage - see https://github.com/colszowka/simplecov/issues/281 for
  # info on version lock
  gem 'simplecov', '~> 0.7.1'
end

group :production do
  # New Relic
  gem "newrelic_rpm"

  # Require for heroku
  gem 'rails_12factor'

  gem 'unicorn'
end

gem 'devise'

gem 'cancan'

gem 'simple_form'

gem 'bootstrap-sass', '~> 3.1.1'
