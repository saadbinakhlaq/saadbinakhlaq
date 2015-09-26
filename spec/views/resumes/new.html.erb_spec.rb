require 'rails_helper'

RSpec.describe "resumes/new", type: :view do
  before(:each) do
    assign(:resume, Resume.new(
      :user => nil,
      :fields => ""
    ))
  end

  it "renders new resume form" do
    render

    assert_select "form[action=?][method=?]", resumes_path, "post" do

      assert_select "input#resume_user_id[name=?]", "resume[user_id]"

      assert_select "input#resume_fields[name=?]", "resume[fields]"
    end
  end
end
