require 'spec_helper'

feature Battle do

  it 'test that player 1 can enter a name in the player 1 form' do
    visit '/'
    fill_in 'player_1', :with => 'Trump'
    fill_in 'player_2', :with => 'Clinton'
    click_button 'Submit'
  end


end
