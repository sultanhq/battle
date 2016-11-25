class Game

  attr_reader :players, :current_turn, :dead_player

  def initialize(player_1, player_2)
    @players = [ player_1, player_2 ]
    @current_turn = @players.first
		@dead_player = nil
  end

  def attack(player)
    player.receive_damage
		has_player_died
  end

  def switch_turns
    @current_turn = @players.rotate!.first
  end

	private

	def has_player_died
		@dead_player = @players.last if @players.last.hp <= 0
	end

end
