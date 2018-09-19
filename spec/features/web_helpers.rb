def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Marianne'
  fill_in 'player2', with: 'Cristina'
  click_button 'Submit'
end
