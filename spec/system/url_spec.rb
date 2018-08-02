require "rails_helper"

RSpec.describe "Shorten url", :type => :system do

  # For generating a valid link
  before(:each) do
    random_word = `shuf -n 1 /usr/share/dict/words`.chomp
	@url = "#{random_word}.com/"
  end
  
  # System test to visit homepage and post input url and create a record.
  it "enables me to input url and create shorten url" do
    visit '/'
    fill_in "Url", :with => @url
    expect{
      click_button 'Go'
    }.to change(Url, :count).by(1)
    expect(page).to have_content("Url was successfully shortened.")
  end
end