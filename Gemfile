source 'https://rubygems.org'

gem 'rails', '4.0.4'

gem 'pg'
gem 'carrierwave'
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'fog'
gem 'newrelic_rpm'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'unicorn'

group :development do
  gem 'better_errors'
  gem 'bullet'
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'rack-cors', :require => 'rack/cors'
end

group :development, :test do
  gem 'rspec-rails'
end

group :production do
  gem 'rails_12factor'
  gem 'rails_serve_static_assets'
end

ruby '2.0.0'
