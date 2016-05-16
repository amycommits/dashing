# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.destroy_all
ActionItem.destroy_all
DashingD3Example.destroy_all


10.times do |i|
	Project.create!(
		accession_number: ((i*100)+22/7),
		title: "Project #{(i+1)}"
		)

end

p "created #{Project.count} Projects"

@minProject = Project.first.id
@maxProject = Project.last.id

p "min project id #{@minProject}"

(@minProject...@maxProject).each do |projectId|
	Random.rand(10).times do |i|
		ActionItem.create!(
			accession_number: Project.find(projectId).accession_number,
			description: "Some description for action #{i} for project #{projectId}",
			action_number: i,
			project_id: projectId

			)
	end
end

p "created #{ActionItem.count} Action Items"
@colors=["red","yellow","blue","green","purple","pink","gray","orange","brown","cyan"];
50.times do |i|
	DashingD3Example.create!(
		name: nil,
    	title: nil,
    	cx: Random.rand(500),
    	cy: Random.rand(500),
    	x: Random.rand(500),
    	y: Random.rand(500),
   		width: Random.rand(500),
    	height: Random.rand(500),
    	radius: Random.rand(50),
    	fill: @colors[Random.rand(9)]
		)
end

p "created #{DashingD3Example.count} D3 examples"

