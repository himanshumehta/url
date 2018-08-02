require 'rails_helper'

RSpec.describe Url, type: :model do  
  before(:each) do
    random_word = `shuf -n 1 /usr/share/dict/words`.chomp
	@url = "#{random_word}.com/"
  end

# checking this in system spec
  # it "check for nil input" do
  # end

# # These urls are same so save sanitized url first time and check for uniqueness
# # Ex. 'http://www.uttarika.com', 'https://www.uttarika.com'
# # 'uttarika.com', 'www.uttarika.com/', 'www.uttarika.com'
# # all are same so first time save 
# # 'http://uttarika.com' as sanitized for any of them and check for uniqueness.

  describe "method" do
    before :each do
      url = Url.create(:url => @url)
      url.sanitize
      url.save
    end

  	it "return true if given url already exist" do
      alternative_url = "www.#{@url}"
	  url = Url.new(:url => alternative_url)
	  url.sanitize
	  expect(url.url_exist).to eq(true)
  	end

  	it "return false if given url doesn't exist in database" do
  	  new_url = "www.new_url.com"
	  url = Url.new(:url => new_url)
	  url.sanitize
	  expect(url.url_exist).to eq(false)
  	end
  end

  it "generate 6 chracter slug for given url" do
  	url = Url.create(:url => @url)
    url.generate_slug
    expect(url.slug).to match(/\A[a-z\d]{6}\z/i)
  end

#   describe "allow only unique slug." do
# 	before do
# 	  url = Url.create(:url => @url)
# 	  same_slug_url = url.dup
# 	  same_slug_url.save
# 	end
# 	expect(same_slug_url).to_not be_valid    
#   end  

#   it "update http_status for given url" do 
#   	# write code
#   end

#   it "create record with all columns values" do
#     expect(url).to be_valid
# 	expect(url.slug).to exist    
# 	expect(url.sanitize_url).to exist
# 	expect(url.http_status).to exist    
# 	expect(url.clicks).to exist    
#   end
end
