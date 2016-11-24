
def sign_in_and_play
  visit '/'
  fill_in('player_1', with: 'Clinton')
  fill_in('player_2', with: 'Trump')
  click_button('Submit')
end
