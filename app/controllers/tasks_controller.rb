class TasksController < ApplicationController
  # list all tasks
  def index
    @tasks = Task.all
  end

  # show 1 task
  def show
    @task = Task.find(params[:id])
  end

  # create a new task
  def new
    @task = Task.new
  end

  def create
    # raise
    @task = Task.create(task_params)
    redirect_to tasks_path(@task)
  end

  # edit a task
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path
  end

  private

  # strong_params
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
