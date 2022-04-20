require 'rails_helper'

RSpec.describe "policemen/index", type: :view do
  before(:each) do
    assign(:policemen, [
      Policeman.create!(
        position: "Position",
        name: "Name"
      ),
      Policeman.create!(
        position: "Position",
        name: "Name"
      )
    ])
  end

  it "renders a list of policemen" do
    render
    assert_select "tr>td", text: "Position".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
