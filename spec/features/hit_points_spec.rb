require 'spec_helper'
require './app'


feature "Viewing hit points of opponent" do
  scenario "players can see other players hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Cristina HP: 100")
  end
end
