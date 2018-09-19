require 'spec_helper'
require './app'


feature "Attacking opponent" do
  scenario "Receive confirmation" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content("You attacked Cristina!")
  end
end
