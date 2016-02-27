require 'rails_helper'

RSpec.describe "dashing_d3_examples/show", type: :view do
  before(:each) do
    @dashing_d3_example = assign(:dashing_d3_example, DashingD3Example.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
  end
end
