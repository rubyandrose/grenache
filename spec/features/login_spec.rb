require 'rails_helper'

RSpec.describe "Logging in" do
  scenario "it shows the log in page" do
    visit "/"
    expect(page).to have_content "does not exist!"
  end
end
