class CreateDashingD3Examples < ActiveRecord::Migration
  def change
    create_table :dashing_d3_examples do |t|
      t.string :name
      t.string :title
      t.integer :cx
      t.integer :cy
      t.integer :x
      t.integer :y
      t.integer :width
      t.integer :height
      t.integer :radius
      t.integer :action_number
      t.integer :total_action
      t.integer :elapsed_days
      t.integer :total_days

      t.timestamps null: false
    end
  end
end
