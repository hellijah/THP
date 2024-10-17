$:.unshift File.expand_path("./../lib", __FILE__)

require 'bundler'
Bundler.require

require 'board'
require 'boardCase'
require 'player'
require 'game'
require 'show'
require 'application'

Application.new.perform