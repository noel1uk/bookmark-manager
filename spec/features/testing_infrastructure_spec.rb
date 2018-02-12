
RSpec.feature "testing environment works", :type => :feature do 
  scenario "checks if environment is working" do 
    visit '/'
    expect(page).to have_content ("testing")
  end
end