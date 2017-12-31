#!/bin/bash
set -e

echo "Executing bundle exec 'rake db:migrate' ..."
RAILS_ENV=production bundle exec rails g spree:install --user_class=Spree::User
RAILS_ENV=production bundle exec rails g spree:auth:install
RAILS_ENV=production bundle exec rails g spree_gateway:install
RAILS_ENV=production bundle exec rake db:migrate
