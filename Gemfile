source 'https://rubygems.org'

# Rails
gem 'rails', '3.2.6'

# Frontend
gem 'jquery-rails'
gem 'slim-rails'
gem 'simple_form'
gem 'inherited_resources'

# User management
gem 'devise'
gem 'cancan'

# Text processing
gem 'RedCloth'

# Image processing
gem 'carrierwave'
gem 'mini_magick'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails'
  gem 'compass_twitter_bootstrap', :git => "https://github.com/vwall/compass-twitter-bootstrap.git"
end

group :development, :test do
  gem 'sqlite3'
end

group :development do
  gem 'thin'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'spinach'
end
