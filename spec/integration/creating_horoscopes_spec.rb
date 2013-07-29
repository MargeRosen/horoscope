require 'spec_helper'
feature 'Creating Your Sign' do
  scenario "can create your sign" do
    visit '/'
    click_link 'Enter your birthdate'
    fill_in 'Birthdate', :with => '12071971'
    click_button 'Find your sign'
    page.should have_content('Sign has been created.')
  end
end
