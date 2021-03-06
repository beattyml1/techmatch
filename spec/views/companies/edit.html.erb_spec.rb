require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :user => nil
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_user_id[name=?]", "company[user_id]"
    end
  end
end
