source 'https://rubygems.org'
ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.3.10'
gem 'pg', '~> 0.18.1'

# Use puma as the app server
gem 'puma', '~> 2.9.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.0.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

group :development do
  gem 'brakeman', '~> 3.0.1', require: false
  gem 'rack-mini-profiler', '~> 0.9.2'

  gem 'rubocop', '~> 0.28', require: false
  # gem 'pronto', '~> 0.3.3'
  # gem 'pippi', '~> 0.0.3'
  gem 'metric_fu', '~> 4.11.4'
  gem 'lol_dba', github: 'thoughtworks/lol_dba'
end

group :development, :test do
  gem 'better_errors', '~> 2.1.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 1.2.0'
  gem 'pry-rails', '~> 0.3.2'
  gem 'did_you_mean', '~> 0.9.4'
  gem 'annotate', '~> 2.6.5'
  gem 'pry', '~> 0.10.1'
  gem 'pry-byebug', '~> 3.0.1'
  gem 'binding_of_caller', '~> 0.7.2', platforms: [:mri_21]
  gem 'quiet_assets', '~> 1.1.0'
  gem 'bullet', '~> 4.14.4'
end

group :test do
  # gem 'metric_fu'
  gem 'simplecov', '~> 0.9.1', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'rails_12factor', '~> 0.0.3', group: :production
