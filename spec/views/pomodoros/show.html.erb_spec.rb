require 'rails_helper'

RSpec.describe "pomodoros/show", :type => :view do
  before(:each) do
    @pomodoro = assign(:pomodoro, Pomodoro.create!(
      :score => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
