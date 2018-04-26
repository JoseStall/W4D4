class UsersController < ApplicationController
	def new
		puts 'coucou'
	end
	def new_post
		@user = User.new
		if User.find_by_username("#{params[:user]}") == nil
			puts User.find_by_username("#{params[:user]}")
			@user.username = params[:user]
			@user.bio =  params[:bio]
			@user.save
			redirect_to "/users/#{@user.username}"
		else
			redirect_to "http://www.rubyonrails.org"
		end
	end

	def show
		@x = params[:id]

		if @x.length > 2
			user = User.find_by_username(@x)
			@name = user.username
			@bio = user.bio
		else
			@name = User.find(@x).username
			@bio = User.find(@x).bio
		end
	end

end