require "rails_helper"

RSpec.describe "Shorten url", :type => :system do

  # For generating a valid link
  before(:each) do
    random_word = `shuf -n 1 /usr/share/dict/words`.chomp
	@url = "#{random_word}.com/"
  end
  
  # System test to visit homepage and post input url and get return slug.
  it "enables me to input url and create shorten url" do
    visit '/'

    fill_in "url", :with => @url
    # click_button "Shorten"

    # expect{
    #   click_button 'Shorten'
    # }.to change(Link, :count).by(1)
    # expect(page).to have_content("URL was successfully shortened.")
  end
end