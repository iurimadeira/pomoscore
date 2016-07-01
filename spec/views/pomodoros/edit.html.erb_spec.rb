require 'rails_helper'

RSpec.describe "pomodoros/edit", :type => :view do
  before(:each) do
    @pomodoro = assign(:pomodoro, Pomodoro.create!(
      :score => 1
    ))
  end

  it "renders the edit pomodoro form" do
    render

    assert_select "form[action=?][method=?]", pomodoro_path(@pomodoro), "post" do

      assert_select "input#pomodoro_score[name=?]", "pomodoro[score]"
    end
  end
end
