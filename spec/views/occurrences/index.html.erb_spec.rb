require 'rails_helper'

RSpec.describe "occurrences/index", type: :view do
  before(:each) do
    assign(:occurrences, [
      Occurrence.create!(
        type: "Type",
        value: "Value",
        policeman: nil
      ),
      Occurrence.create!(
        type: "Type",
        value: "Value",
        policeman: nil
      )
    ])
  end

  it "renders a list of occurrences" do
    render
    assert_select "tr>td", text: "Type".to_s, count: 2
    assert_select "tr>td", text: "Value".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
