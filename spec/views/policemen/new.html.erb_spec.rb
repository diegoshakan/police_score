require 'rails_helper'

RSpec.describe "policemen/new", type: :view do
  before(:each) do
    assign(:policeman, Policeman.new(
      position: "MyString",
      name: "MyString"
    ))
  end

  it "renders new policeman form" do
    render

    assert_select "form[action=?][method=?]", policemen_path, "post" do

      assert_select "input[name=?]", "policeman[position]"

      assert_select "input[name=?]", "policeman[name]"
    end
  end
end
