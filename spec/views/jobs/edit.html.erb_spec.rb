require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "MyString",
      :hook => "MyString",
      :description => "MyText",
      :company => nil,
      :user => nil
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_hook[name=?]", "job[hook]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_company_id[name=?]", "job[company_id]"

      assert_select "input#job_user_id[name=?]", "job[user_id]"
    end
  end
end
