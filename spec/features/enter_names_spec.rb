require 'enter_names.rb'

describe 'enter_names' do
  # subject(:enter_name) {described_class.new}

  it 'tests webpage' do
    expect(visit('localhost/')).to be
  end
  #
  # it 'should allow enter name to accept Agata' do
  #   expect(enter_name).to fill_in('player_1', with: 'Agata')
  # end

end
