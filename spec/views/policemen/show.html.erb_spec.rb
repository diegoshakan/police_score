require 'rails_helper'

RSpec.describe "policemen/show", type: :view do
  before(:each) do
    @policeman = assign(:policeman, Policeman.create!(
      position: "Position",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Name/)
  end
end
