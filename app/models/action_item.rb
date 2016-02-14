class ActionItem < ActiveRecord::Base
  belongs_to :project
  before_create :create_action_number
  after_create :total_update
  def create_action_number
    self.action_number = project.total_actions if project
  end
  def total_update
  	project.total_actions_update if project
  end
end
