class Project < ActiveRecord::Base
  has_many :action_items
  
  def total_actions
	action_items.count()
  end
  def total_actions_update
  	totalCount=total_actions
  	action_items.update_all total_action: totalCount
  end
end
