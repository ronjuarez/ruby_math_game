require './game'
require './player'
require './question'


player1 = Player.new('Player 1' ,3)
player2 = Player.new('Player 2' ,3)
game = Game.new(player1, player2)
game.start