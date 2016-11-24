require 'player.rb'

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

  context '.attack' do

    it "should reduce hp by #{Player::DAMAGE_VALUE} when called" do
      expect(player_1.attack(player_2)).to eq player_2.hp
    end

  end

end
