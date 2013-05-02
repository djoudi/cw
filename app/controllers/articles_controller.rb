class ArticlesController < ApplicationController
	before_filter :signed_in_user, only: [:new, :update, :edit, :create, :destroy]

	def show
		@article = Article.find(params[:id])
		@versions = @article.versions
		@article = @article.versions[params[:version].to_i].reify if params[:version]
		#show!
	end

#	def show_versions
#		@article = Article.find(params[:id])
#		@all_versions = @article.versions
#	end	
#
#	def show_one_version(idx)
#		@version = @article.versions[idx]
#		#version_link = view_context.link_to(""	versions_show_version_path		 
#	end

	def index
		@articles = Article.all

	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
		if @article.save
			flash[:sucess] = "Hey, way to go on that new article, it looks really great!"
			redirect_to @article
		else
			render 'new'
		end

	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.update_attributes(params[:article])
			flash[:success] = "Article updated"
			redirect_to @article
		else
			render 'edit'
		end
	end


	def destroy
	end










	
end
