require 'rails_helper'

RSpec.describe ActionItem, type: :model do
  context "new action item" do
	let(:new_item) { FactoryGirl.build :action_item }	
	
	it "is valid" do
	  expect(new_item).to be_valid, "default not valid" 
	end
	it "has a project with the same accession number" do
	  expect(new_item.project).to be_present
	  expect(new_item.project.accession_number).to eq(new_item.accession_number), "no project found"
	end
	it "has an action number of 0" do
	   new_item.save
	   expect(new_item.action_number).to eq(0)
	end 
	it "has total action number of 1" do
	  new_item.save
	  new_item.reload
	   expect(new_item.total_action).to eq(1)
	end

	it "has 0 elapsed days since previous action" do
	  new_item.save
 	  expect(new_item.elapsed_days).to eq(0)
	end
	it "has 0 total elapsed days"
  end
end
