require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :user => nil
      ),
      Company.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
