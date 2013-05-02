class VersionsController < ApplicationController

	def index
		@versions = Version.all
	end

	def show_version
		@version = Version.find(params[:id])
		@version.reify
	end

	
end
