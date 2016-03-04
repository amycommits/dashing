class AddFillToDashingD3Examples < ActiveRecord::Migration
  def change
    add_column :dashing_d3_examples, :fill, :string
  end
end
