require 'rails_helper'

RSpec.describe "Logging in" do
  scenario "it shows the log in page" do
    visit "/"
    expect(page).to have_content "Log in to get the juices flowing."
  end
end
