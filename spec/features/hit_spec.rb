require 'spec_helper'

feature 'Hit' do

  before(:each) do
    sign_in_and_play
  end

  context 'attacking' do

    scenario 'should show player 2\'s HP is reduced by 10 ' do
      click_button('Hit')
      expect(page).to have_content('who now has 90 HP')
    end

  end

end
