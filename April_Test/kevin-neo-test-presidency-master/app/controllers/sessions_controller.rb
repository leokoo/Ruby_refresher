class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.new(params[:name][:email])
	end


end