require 'rbconfig'
HOST_OS = Config::CONFIG['host_os']
source 'http://rubygems.org'
gem 'rails', '3.1.0'
#gem 'rack', '1.3.3'

group :development, :test do
  gem 'sqlite3'
end

gem "haml", "3.1.1"
gem "haml-rails", "0.3.4", :group => :development
gem "rspec-rails", "2.6.1", :group => [:development, :test]
gem "factory_girl_rails", "1.1.beta1", :group => :test
gem "cucumber-rails", "0.5.1", :group => :test
gem "capybara", "1.0.0", :group => :test
gem "database_cleaner", "0.6.7", :group => :test
gem "launchy", "0.4.0", :group => :test
gem "guard", ">= 0.6.2", :group => :development
case HOST_OS
  when /darwin/i
    gem 'rb-fsevent', :group => :development
    gem 'growl', :group => :development
  when /linux/i
    gem 'libnotify', :group => :development
    gem 'rb-inotify', :group => :development
    gem 'pg', :group => :production
  when /mswin|windows/i
    gem 'rb-fchange', :group => :development
    gem 'win32console', :group => :development
    gem 'rb-notifu', :group => :development
end
gem "guard-bundler", ">= 0.1.3", :group => :development
gem "guard-rails", ">= 0.0.3", :group => :development
gem "guard-livereload", ">= 0.3.0", :group => :development
gem "guard-rspec", ">= 0.4.3", :group => :development
gem "guard-cucumber", ">= 0.6.1", :group => :development
gem "devise", ">= 1.3.4"
gem "rails-footnotes", ">= 3.7", :group => :development

# booher custom additions
gem 'activeadmin'
gem 'heroku'
#gem 'barista'
#gem 'therubyracer', :require => nil
gem 'inherited_resources'
gem 'lazy_high_charts', :git => 'git://github.com/michelson/lazy_high_charts.git'

gem 'sass-rails', " ~> 3.1.0"

group :assets do
  gem 'coffee-rails', " ~> 3.1.0"  
  gem 'uglifier'  
end

#group :production do
#  gem 'therubyracer-heroku'

#  gem 'arel'
#end

gem 'jquery-rails'

gem 'coffeebeans'
