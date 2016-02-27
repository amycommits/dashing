require 'rails_helper'

RSpec.describe "dashing_d3_examples/edit", type: :view do
  before(:each) do
    @dashing_d3_example = assign(:dashing_d3_example, DashingD3Example.create!(
      :name => "MyString",
      :title => "MyString",
      :cx => 1,
      :cy => 1,
      :x => 1,
      :y => 1,
      :width => 1,
      :height => 1,
      :radius => 1,
      :action_number => 1,
      :total_action => 1,
      :elapsed_days => 1,
      :total_days => 1
    ))
  end

  it "renders the edit dashing_d3_example form" do
    render

    assert_select "form[action=?][method=?]", dashing_d3_example_path(@dashing_d3_example), "post" do

      assert_select "input#dashing_d3_example_name[name=?]", "dashing_d3_example[name]"

      assert_select "input#dashing_d3_example_title[name=?]", "dashing_d3_example[title]"

      assert_select "input#dashing_d3_example_cx[name=?]", "dashing_d3_example[cx]"

      assert_select "input#dashing_d3_example_cy[name=?]", "dashing_d3_example[cy]"

      assert_select "input#dashing_d3_example_x[name=?]", "dashing_d3_example[x]"

      assert_select "input#dashing_d3_example_y[name=?]", "dashing_d3_example[y]"

      assert_select "input#dashing_d3_example_width[name=?]", "dashing_d3_example[width]"

      assert_select "input#dashing_d3_example_height[name=?]", "dashing_d3_example[height]"

      assert_select "input#dashing_d3_example_radius[name=?]", "dashing_d3_example[radius]"

      assert_select "input#dashing_d3_example_action_number[name=?]", "dashing_d3_example[action_number]"

      assert_select "input#dashing_d3_example_total_action[name=?]", "dashing_d3_example[total_action]"

      assert_select "input#dashing_d3_example_elapsed_days[name=?]", "dashing_d3_example[elapsed_days]"

      assert_select "input#dashing_d3_example_total_days[name=?]", "dashing_d3_example[total_days]"
    end
  end
end
