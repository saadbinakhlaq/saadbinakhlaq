require 'rails_helper'

RSpec.describe "resumes/index", type: :view do
  before(:each) do
    assign(:resumes, [
      Resume.create!(
        :user => nil,
        :fields => ""
      ),
      Resume.create!(
        :user => nil,
        :fields => ""
      )
    ])
  end

  it "renders a list of resumes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
