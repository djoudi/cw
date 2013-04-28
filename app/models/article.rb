class Article < ActiveRecord::Base
  attr_accessible :title, :content

	has_paper_trail

	validates :title, 	presence: true, uniqueness: true
	validates :content, presence: true, uniqueness: true





end
