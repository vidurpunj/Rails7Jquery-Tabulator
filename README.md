For Hotwire to work follow the github guide line on
https://github.com/hotwired/turbo-rails
bundle install
rails turbo:install
rails turbo:install:redis

Also check if redis server is installed and working in you ubuntu.
sudo service redis-server status