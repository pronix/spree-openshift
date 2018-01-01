#!/bin/bash
set -e

echo "Executing bundle exec 'rake db:migrate' ..."
RAILS_ENV=production bundle exec rake railties:install:migrations
RAILS_ENV=production bundle exec rake db:migrate
