class AddActionItemToProject < ActiveRecord::Migration
  def change
    add_reference :projects, :action_items, :has_many
  end
end
