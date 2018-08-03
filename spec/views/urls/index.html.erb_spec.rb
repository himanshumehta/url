require 'rails_helper'

RSpec.describe "urls/index", type: :view do
  before(:each) do
    assign(:urls, [
      Url.create!(
        :url => "Url",
        :slug => "Slug",
        :clicks => 2,
        :sanitize_url => "Sanitize Url",
        :http_status => 3
      ),
      Url.create!(
        :url => "Url",
        :slug => "Slug",
        :clicks => 2,
        :sanitize_url => "Sanitize Url",
        :http_status => 3
      )
    ])
  end

  # it "renders a list of urls" do
  #   render
  #   assert_select "tr>td", :text => "Url".to_s, :count => 2
  #   # assert_select "tr>td", :text => "Slug".to_s, :count => 2
  #   assert_select "tr>td", :text => 2.to_s, :count => 2
  #   assert_select "tr>td", :text => "Sanitize Url".to_s, :count => 2
  #   assert_select "tr>td", :text => 3.to_s, :count => 2
  # end
end
