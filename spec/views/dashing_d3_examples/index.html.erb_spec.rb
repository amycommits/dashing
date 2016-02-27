require 'rails_helper'

RSpec.describe "dashing_d3_examples/index", type: :view do
  before(:each) do
    assign(:dashing_d3_examples, [
      DashingD3Example.create!(
        :name => "Name",
        :title => "Title",
        :cx => 1,
        :cy => 2,
        :x => 3,
        :y => 4,
        :width => 5,
        :height => 6,
        :radius => 7,
        :action_number => 8,
        :total_action => 9,
        :elapsed_days => 10,
        :total_days => 11
      ),
      DashingD3Example.create!(
        :name => "Name",
        :title => "Title",
        :cx => 1,
        :cy => 2,
        :x => 3,
        :y => 4,
        :width => 5,
        :height => 6,
        :radius => 7,
        :action_number => 8,
        :total_action => 9,
        :elapsed_days => 10,
        :total_days => 11
      )
    ])
  end

  it "renders a list of dashing_d3_examples" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
  end
end
