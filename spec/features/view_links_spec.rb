
RSpec.feature "home path shows links", :type => :feature do
  scenario "displays links" do
    visit '/'
    expect(page).to have_content("http://www.makersacademy.com")
  end
end
