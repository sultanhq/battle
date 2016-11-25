require 'spec_helper'

feature 'game over' do
  scenario 'we want a message to tell us the game is over' do
    sign_in_and_play
    18.times do
      click_button("Attack")
      click_button("Next turn")
    end
    click_button("Attack")
    expect(page).to have_content('Game over Trump is Dead!')
  end
end
