require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
run ApplicationController

#  rerun "rackup --port 4567"