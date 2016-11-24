require 'game.rb'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player)}
  let(:player_2) { double(:player)}

  context '.player' do
    it 'test that player one is called' do
      expect(game.player_1).to eq player_1
    end

    it 'test that player two is called' do
      expect(game.player_2).to eq player_2
    end
  end


  context '.attack' do

    it "test that player 2 is being attacked" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end

  end

end
