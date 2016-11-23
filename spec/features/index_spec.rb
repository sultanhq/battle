require 'spec_helper'

feature Battle do

  it 'visits the homepage' do
    visit '/battle'
    expect(page).to have_content "Hello Battle!"
  end

  it 'test that player 1 can enter a name in the player 1 form' do
    visit '/'
    fill_in 'player1', :with => 'A'
    fill_in 'player2', :with => 'B'
    click_button 'Submit'
  end

  describe 'enter names' do
    it 'tests that filling in the player_1 and player_2 form returns the names' do
      visit '/'
      fill_in('player1', with: 'A')
      fill_in('player2', with: 'B')
      click_button('Submit')
      expect(page).to have_content('A vs B')
    end
  end
end
