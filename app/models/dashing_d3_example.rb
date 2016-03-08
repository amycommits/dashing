class DashingD3Example < ActiveRecord::Base
	#include RandomizeResults
	scope :lineInfo, -> {select(:x,:y)}
end
