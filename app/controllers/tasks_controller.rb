class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # GET /tasks/:id
  end

  def new
    # GET /tasks/new
    # Render a form

    @task = Task.new
  end

  def create
    # POST /tasks
    # Create a task in the DB

    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
    # GET /tasks/:id/edit
    # Render a form for editing
  end

  def update
    # PATCH /tasks/:id

    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    # DELETE /tasks/:id

    @task.destroy!

    redirect_to tasks_all_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
