class Article < ActiveRecord::Base
  attr_accessible :title, :content

	has_paper_trail

	validates :title, 	presence: true, uniqueness: true
	validates :content, presence: true, uniqueness: true

#	def show_past_versions
#		self.versions.each do |version|
#			unless version.reify.nil?
#				link_to "Version {version.id}", version.reify
#			end
#		end
#	end 			



end
