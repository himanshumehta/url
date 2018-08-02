require 'rails_helper'

RSpec.describe "urls/edit", type: :view do
  before(:each) do
    @url = assign(:url, Url.create!(
      :url => "MyString",
      :slug => "MyString",
      :clicks => 1,
      :sanitize_url => "MyString",
      :http_status => 1
    ))
  end

  it "renders the edit url form" do
    render

    assert_select "form[action=?][method=?]", url_path(@url), "post" do

      assert_select "input[name=?]", "url[url]"

      # assert_select "input[name=?]", "url[slug]"

      # assert_select "input[name=?]", "url[clicks]"

      # assert_select "input[name=?]", "url[sanitize_url]"

      # assert_select "input[name=?]", "url[http_status]"
    end
  end
end
