require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1= Player.new("vegeta")
player2= Player.new("bumblebi")


puts" Voici l'état de chaque joueur"

player1.show_state
player2.show_state



puts "Passons à la phase d'attaque :"
player1.attack(player2) 
player2.attack(player1)

binding.pry

