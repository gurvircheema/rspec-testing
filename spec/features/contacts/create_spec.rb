require 'rails_helper'

RSpec.feature "Contact", :type => :feature do
  scenario "create a new contact" do
    visit '/contacts/new'

    fill_in 'Full name', with: 'My full name'
    fill_in 'Email', with: 'my@email.com'
    fill_in 'Phone number', with: '604-855-1234'
    fill_in 'Address', with: '65 Best Ave, Mission, V2V 6Z9'

    click_button 'Create Contact'

    expect(page).to have_content("My full name")
  end  
end