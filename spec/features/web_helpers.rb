
def sign_in_and_play
  visit '/'
  fill_in('player1', with: 'Clinton')
  fill_in('player2', with: 'Trump')
  click_button('Submit')
end
