require 'rails_helper'

RSpec.describe "pomodoros/new", :type => :view do
  before(:each) do
    assign(:pomodoro, Pomodoro.new(
      :score => 1
    ))
  end

  it "renders new pomodoro form" do
    render

    assert_select "form[action=?][method=?]", pomodoros_path, "post" do

      assert_select "input#pomodoro_score[name=?]", "pomodoro[score]"
    end
  end
end
