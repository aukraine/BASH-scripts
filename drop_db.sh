#!/usr/bin/env bash

cd ~/Projects/telapp/upgrade/tas
bundle exec rake db:drop &&
bundle exec rake parallel:drop &&
bundle exec rake db:create &&
bundle exec rake db:reset:complete &&
bundle exec rake td:rspec_setup &&
bundle exec rake parallel:setup
cd ../../../..
