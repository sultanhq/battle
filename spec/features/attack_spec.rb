require 'spec_helper'

feature 'attack' do

  before(:each) do
    sign_in_and_play
  end

  context 'attacking' do

    scenario 'should show player 2\'s HP is reduced by 10 ' do
      click_button('Attack')
      expect(page).to have_content('who now has 90 HP')
    end

  end

end
