source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.3"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  # gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry', '~> 0.13.1'
  gem 'rswag-specs'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rubocop', '~> 1.42.0', require: false
  gem 'rubocop-performance', '~> 1.15.2', require: false
  gem 'rubocop-rails', '~> 2.17.4', require: false
  gem 'rubocop-rspec', '~> 2.16.0', require: false
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 4.1.0'
  gem 'brakeman', '~> 5.4.0'
  gem 'annotate', '~> 3.2.0'
  gem 'ridgepole', '~> 1.2.0'
  gem 'factory_bot_rails', '>= 6.0.0'
  gem 'faker', '>= 3.0.0'
  gem 'better_errors', '~> 2.9.1'
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # unit test
  gem 'rspec-rails', '~> 4.0.1'
  gem 'capybara', '~> 3.38'
  gem 'database_cleaner', '~> 1.99.0'
  gem 'rails-controller-testing', '~> 1.0.5'
  gem 'simplecov', '~> 0.21.2', require: false
end

#  Core gem
gem 'dotenv-rails', '~> 2.7.6'

# Code smell detector for Ruby
gem 'reek', '~> 6.1.3'

# Active Model
gem 'paranoia', '~> 2.2'
gem 'ssrf_filter', '~> 1.1.1'
gem 'activerecord_json_validator', '~> 2.1.3'
gem 'ransack', '~> 3.2.1'
gem 'jbuilder', '>= 2.11.1'
gem 'draper', '>= 4.0.0'
gem 'cancancan', '~> 3.4.0'
gem 'seed-fu', '~> 2.3.9'
gem 'activerecord-import', '~> 1.4.1'

# Localization
gem 'enum_help', '>= 0.0.18'
gem 'rails-i18n', '~> 7.0.6'

# Pagination
gem 'kaminari', '>= 1.0.2'

# Authentication
gem 'rack-cors', require: 'rack/cors'