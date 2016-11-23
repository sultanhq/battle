require 'spec_helper'

feature Battle do

  it 'visits the webpage' do
    visit '/'
    expect(page).to have_content 'Hello Battle!'
  end

  it 'test that player 1 can enter a name in the player 1 form' do
    visit '/enter_names'
    fill_in 'player_1', :with => 'Trump'
  end

  it 'test that player 2 can enter a name in the player 2 form' do
    visit '/enter_names'
    fill_in 'player_2', :with => 'Clinton'
  end



end
