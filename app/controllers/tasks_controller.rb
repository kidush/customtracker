class TasksController < ApplicationController
	before_action :authenticate_user!

	# method GET index
	def index
		@task = Task.all
	end

	def new
		@task = Task.new
	end
end
