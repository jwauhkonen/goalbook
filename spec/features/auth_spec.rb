require 'spec_helper'
require 'rails_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "New User"
  end

  feature "signing up a user" do

    it "shows username on the homepage after signup"

  end

end

feature "logging in" do 

  it "shows username on the homepage after login"

end

feature "logging out" do 

  it "begins with logged out state"

  it "doesn't show username on the homepage after logout"

end