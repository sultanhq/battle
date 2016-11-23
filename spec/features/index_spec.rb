require 'spec_helper'

feature Battle do

  it 'visits the homepage' do
    visit '/battle'
    expect(page).to have_content "Hello Battle!"
  end

  it 'test that player 1 can enter a name in the player 1 form' do
    visit '/'
    fill_in 'player1', :with => 'A'
    fill_in 'player2', :with => 'A'
    click_button 'Submit'
  end

  # feature 'enter names' do
  #   scenario 'test that filling in the player_1 form returns a name' do
  #     visit '/names'
  #     fill_in 'name', :with 'Dave'
  #     click_button('Submit')
  #     expect(page).to have_content('Dave')
  #   end
  # end
end
