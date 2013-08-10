require 'spec_helper'
feature 'Your Sign' do
  scenario "can create your sign" do
    visit '/'
    click_link 'Enter your birthdate'
    #fill_in 'Birthdate', :with => '12071971'
    select birthdate.year.to_s, :from => 'birthdate_1i'
    select Date::MONTHNAMES[birthdate.month], :from => 'birthdate_2i'
    select birthdate.date.to_s :from => 'birthdate_3i'
    click_button 'Find your sign'
    page.should have_content('Sign has been created.')
  end
end
