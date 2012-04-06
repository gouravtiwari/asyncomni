source "http://rubygems.org"

# Declare your gem's dependencies in asyncomni.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "haml"

group :development, :test do
  gem 'rspec-rails'
  gem "capybara"
  gem "spork", "> 0.9.0.rc"
  gem "guard-spork"
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem "shoulda", "2.11.3"
  gem "shoulda-matchers", "~> 1.0.0"
  gem 'jasmine'
end
