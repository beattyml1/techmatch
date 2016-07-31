require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :title => "Title",
      :hook => "Hook",
      :description => "MyText",
      :company => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Hook/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
