require 'game.rb'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player)}
  let(:player_2) { double(:player)}

  context '.player' do
    it 'test that player one is called' do
      expect((game.players).first).to eq player_1
    end

    it 'test that player two is called' do
      expect((game.players).last).to eq player_2
    end
  end


  context '.attack' do

    it "test that player 2 is being attacked" do
      expect((game.players).last).to receive(:receive_damage)
      expect((game.players).last).to receive(:hp).and_return(100)

      game.attack(game.players.last)
    end


  end

  context 'switch turns' do
  end

  context 'dead player' do

    it 'should be initialized with variable dead player' do
      expect(game.dead_player).to eq nil
    end

    it 'should test that dead player equals player with 0 hp' do
      allow(player_2).to receive(:hp).and_return(0)
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
      expect(game.dead_player).to eq player_2
    end



  end

end
