FactoryGirl.define do
  factory :action_item do
	project
	accession_number {project.accession_number}  #89234 
	description "some description"
		    
  end
end
