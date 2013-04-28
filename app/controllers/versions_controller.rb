class VersionsController < ApplicationController

	def index
		@versions = Version.all
	end

	def show
		@version = Version.find(params[:id])
	end

	
end
