source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'sass-rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'twitter-bootstrap-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'webpacker', '~> 4.0'
gem 'bootsnap'
gem 'listen'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'russian'
gem "font-awesome-rails"
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'lightbox2-rails'
gem 'therubyracer'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'dotenv-rails'
gem 'pundit'
gem 'resque'


group :production do
  gem 'pg'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'letter_opener'
end

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

#gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

