require 'spec_helper'
require './app'


feature "Attacking opponent" do
  scenario "Receive confirmation" do
    sign_in_and_play
    19.times{attack_and_click}
    expect(page).to have_content("Marianne wins by 10HP")
  end
end
