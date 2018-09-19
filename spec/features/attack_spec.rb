require 'spec_helper'
require './app'


feature "Attacking opponent" do
  scenario "Receive confirmation" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content("You attacked Cristina!")
  end

  scenario "reduces HP of opponent by 10" do
    sign_in_and_play
    click_button "attack"
    expect(page).not_to have_content("Cristina HP: 100")
    expect(page).to have_content("Cristina HP: 90")
  end
end
