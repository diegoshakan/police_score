require 'rails_helper'

RSpec.describe "occurrences/new", type: :view do
  before(:each) do
    assign(:occurrence, Occurrence.new(
      type: "",
      value: "MyString",
      policeman: nil
    ))
  end

  it "renders new occurrence form" do
    render

    assert_select "form[action=?][method=?]", occurrences_path, "post" do

      assert_select "input[name=?]", "occurrence[type]"

      assert_select "input[name=?]", "occurrence[value]"

      assert_select "input[name=?]", "occurrence[policeman_id]"
    end
  end
end
