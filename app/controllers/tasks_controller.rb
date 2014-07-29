class TasksController < ApplicationController
	before_action :authenticate_user!
	before_action :new_task, only: [:index, :new]

	# method GET index
	def index
		#@tasks_started = Task.all.
		@projects = Project.all
	end

	def new
	end

	def create
	end

	private

	def tasks_params
	end

	def new_task
		@task = Task.new
	end
end
