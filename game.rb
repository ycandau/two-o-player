require_relative './player.rb'
require_relative './ask.rb'

class Game

  def initialize
    @player1 = Player.new('Player 1', 'P1')
    @player2 = Player.new('Player 2', 'P2')
    @players = [@player1, @player2].shuffle
    @round = 1
  end

  def print_state
    puts "#{@player1.state} vs #{@player2.state}"
  end

  def print_winner
    winner = @player1.lives > @player2.lives ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end


  def round
    puts '-' * 8 + " ROUND #{@round} " + '-' * 8
    player = @players.first
    correct = ask(player.name)
    if not correct
      player.lose
    end
    @players.rotate!
    self.print_state
    @round += 1
  end


  def play
    puts "\n"
    while @player1.alive && @player2.alive
      self.round
    end
    self.print_winner
    puts '-' * 8 + " GAME OVER " + '-' * 8
    puts "Good bye!\n\n"
  end

end