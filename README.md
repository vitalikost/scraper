# README

git clone https://github.com/vitalikost/scraper.git

development\
bundle install\
yarn install\
rails db:create\
nohup rails s>rails.log 2>&1 &

production\
sudo service nginx stop\
bundle install --without test development\
yarn install\
bundle exec rake db:migrate RAILS_ENV=production\
bundle exec rake assets:precompile RAILS_ENV=production\
sudo service nginx start