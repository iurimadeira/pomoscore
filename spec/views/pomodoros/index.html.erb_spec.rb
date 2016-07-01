require 'rails_helper'

RSpec.describe "pomodoros/index", :type => :view do
  before(:each) do
    assign(:pomodoros, [
      Pomodoro.create!(
        :score => 1
      ),
      Pomodoro.create!(
        :score => 1
      )
    ])
  end

  it "renders a list of pomodoros" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
