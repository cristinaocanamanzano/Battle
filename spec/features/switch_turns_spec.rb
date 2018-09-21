require 'spec_helper'
require './app'

feature "Switching turns" do
  scenario "Shows first turn" do
    sign_in_and_play
    expect(page).to have_content("Marianne's turn")
  end

  scenario "Switches turn after attack" do
    sign_in_and_play
    click_button "attack"
    click_button "ok"
    expect(page).to have_content("Cristina's turn")
  end
end
