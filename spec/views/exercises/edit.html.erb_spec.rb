require 'rails_helper'

RSpec.describe "exercises/edit", :type => :view do
  before(:each) do
    @exercise = assign(:exercise, Exercise.create!(
      :name => "MyString",
      :cbpm => 1.5,
      :intensity => "MyString"
    ))
  end

  it "renders the edit exercise form" do
    render

    assert_select "form[action=?][method=?]", exercise_path(@exercise), "post" do

      assert_select "input#exercise_name[name=?]", "exercise[name]"

      assert_select "input#exercise_cbpm[name=?]", "exercise[cbpm]"

      assert_select "input#exercise_intensity[name=?]", "exercise[intensity]"
    end
  end
end
