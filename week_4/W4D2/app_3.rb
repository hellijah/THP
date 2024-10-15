require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# change player name color
def colored(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end

