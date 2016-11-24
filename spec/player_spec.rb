require 'player.rb'
require 'pry'

describe Player do

subject(:player_1) {described_class.new("Clinton")}
subject(:player_2) {described_class.new("Trump")}

  context '@name' do

    it 'should return player name' do
      expect(player_1.name).to eq "Clinton"
    end

  end

  context '@HP' do

    it "should return the player\'s starting points of #{Player::STARTING_HP}" do
      expect(player_1.hp).to eq Player::STARTING_HP
    end

  end

end
