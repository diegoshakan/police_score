require 'rails_helper'

RSpec.describe "occurrences/edit", type: :view do
  before(:each) do
    @occurrence = assign(:occurrence, Occurrence.create!(
      type: "",
      value: "MyString",
      policeman: nil
    ))
  end

  it "renders the edit occurrence form" do
    render

    assert_select "form[action=?][method=?]", occurrence_path(@occurrence), "post" do

      assert_select "input[name=?]", "occurrence[type]"

      assert_select "input[name=?]", "occurrence[value]"

      assert_select "input[name=?]", "occurrence[policeman_id]"
    end
  end
end
