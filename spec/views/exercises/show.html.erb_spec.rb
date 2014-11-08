require 'rails_helper'

RSpec.describe "exercises/show", :type => :view do
  before(:each) do
    @exercise = assign(:exercise, Exercise.create!(
      :name => "Name",
      :cbpm => 1.5,
      :intensity => "Intensity"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Intensity/)
  end
end
