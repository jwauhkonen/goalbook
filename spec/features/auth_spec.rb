require 'spec_helper'
require 'rails_helper'

feature "the signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "New User"
  end

  feature "signing up a user" do
    
    before(:each) do
      visit new_user_url
      fill_in 'Username', :with => 'david'
      fill_in 'Password', :with => 'password1' 
      click_button 'Sign Up'
    end
    
    scenario "shows username on the user page after signup" do
      expect(page).to have_content 'david'
    end
  end

end

feature "logging in" do
  
  given(:user) { FactoryGirl.create(:user) }
  
  before(:each) do
    log_in_user(user)
  end

  scenario "shows username on the user page after login" do
    expect(page).to have_content user.username
  end

end

feature "logging out" do 

  it "begins with logged out state" do
    visit root_url
    expect(page).to have_content "Sign Up"
    expect(page).to have_content "Log In"
    expect(page).not_to have_content "Log Out"
  end

  it "doesn't show username on the homepage after logout" do
    user = FactoryGirl.create(:user)
    log_in_user(user)
    click_on 'Log Out'
    visit root_url
    expect(page).not_to have_content user.username
  end

end

private
def log_in_user(user)
  visit new_session_url
  fill_in 'Username', :with => user.username
  fill_in 'Password', :with => user.password
  click_on 'Sign In'
end