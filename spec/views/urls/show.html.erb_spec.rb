require 'rails_helper'

RSpec.describe "urls/show", type: :view do
  before(:each) do
    @url = assign(:url, Url.create!(
      :url => "Url",
      :slug => "Slug",
      :clicks => 2,
      :sanitize_url => "Sanitize Url",
      :http_status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Sanitize Url/)
    expect(rendered).to match(/3/)
  end
end
