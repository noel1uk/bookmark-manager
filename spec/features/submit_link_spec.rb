RSpec.feature "home path shows links", :type => :feature do
  scenario 'can submit a link and save it' do
    visit ("/")
    fill_in('url', with: "http://www.stackoverflow.com")
    click_button("Save")
    expect(page).to have_content("http://www.google.com")
  end
end
