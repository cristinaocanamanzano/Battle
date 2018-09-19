require 'spec_helper'
require './app'

# RSpec.feature "Testing infrastructure" do
#   scenario "starting homepage" do
#     visit '/'
#     expect(page).to have_content("Testing infrastructure working!")
#   end
# end

RSpec.feature "Entering player names" do
  scenario "Players enter their names at the beginning" do
    sign_in_and_play
    expect(page).to have_content('Marianne vs. Cristina')
  end
end
