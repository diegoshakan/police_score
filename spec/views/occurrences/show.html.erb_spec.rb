require 'rails_helper'

RSpec.describe "occurrences/show", type: :view do
  before(:each) do
    @occurrence = assign(:occurrence, Occurrence.create!(
      type: "Type",
      value: "Value",
      policeman: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Value/)
    expect(rendered).to match(//)
  end
end
