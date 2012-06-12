#!/usr/bin/env rake
require "bundler/gem_tasks"
require "gem_publisher"

task :publish_gem do |t|
  gem = GemPublisher.publish_if_updated("omniauth-gds.gemspec", :gemfury)
  puts "Published #{gem}" if gem
end