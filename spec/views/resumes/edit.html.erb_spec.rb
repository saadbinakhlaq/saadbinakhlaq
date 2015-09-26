require 'rails_helper'

RSpec.describe "resumes/edit", type: :view do
  before(:each) do
    @resume = assign(:resume, Resume.create!(
      :user => nil,
      :fields => ""
    ))
  end

  it "renders the edit resume form" do
    render

    assert_select "form[action=?][method=?]", resume_path(@resume), "post" do

      assert_select "input#resume_user_id[name=?]", "resume[user_id]"

      assert_select "input#resume_fields[name=?]", "resume[fields]"
    end
  end
end
