require 'rails_helper'

RSpec.describe "urls/new", type: :view do
  before(:each) do
    assign(:url, Url.new(
      :url => "MyString",
      :slug => "MyString",
      :clicks => 1,
      :sanitize_url => "MyString",
      :http_status => 1
    ))
  end

  it "renders new url form" do
    render

    assert_select "form[action=?][method=?]", urls_path, "post" do

      assert_select "input[name=?]", "url[url]"

      assert_select "input[name=?]", "url[slug]"

      assert_select "input[name=?]", "url[clicks]"

      assert_select "input[name=?]", "url[sanitize_url]"

      assert_select "input[name=?]", "url[http_status]"
    end
  end
end
