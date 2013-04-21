class ArticlesController < ApplicationController
	before_filter :signed_in_user, only: [:edit, :create, :destroy]

	def index
		@articles = Article.all

	end

	def create
		@article = Article.new
		
		redirect_to @article

	end

	def edit
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
