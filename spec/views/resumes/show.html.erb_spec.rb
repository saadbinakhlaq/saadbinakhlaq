require 'rails_helper'

RSpec.describe "resumes/show", type: :view do
  before(:each) do
    @resume = assign(:resume, Resume.create!(
      :user => nil,
      :fields => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
