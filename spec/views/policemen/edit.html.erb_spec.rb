require 'rails_helper'

RSpec.describe "policemen/edit", type: :view do
  before(:each) do
    @policeman = assign(:policeman, Policeman.create!(
      position: "MyString",
      name: "MyString"
    ))
  end

  it "renders the edit policeman form" do
    render

    assert_select "form[action=?][method=?]", policeman_path(@policeman), "post" do

      assert_select "input[name=?]", "policeman[position]"

      assert_select "input[name=?]", "policeman[name]"
    end
  end
end
