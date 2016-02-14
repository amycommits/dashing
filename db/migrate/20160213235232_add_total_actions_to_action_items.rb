class AddTotalActionsToActionItems < ActiveRecord::Migration
  def change
    add_column :action_items, :total_action, :integer
  end
end
