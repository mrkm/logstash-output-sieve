#!/bin/zsh
rbenv exec gem build logstash-output-sieve.gemspec
sudo /opt/logstash/bin/plugin install ~/git/logstash-output-sieve/logstash-output-sieve-0.1.3.gem
sudo service logstash restart
