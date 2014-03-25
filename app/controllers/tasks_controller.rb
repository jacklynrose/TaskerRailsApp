class TasksController < ApplicationController
  respond_to :json

  def index
    @tasks = Task.all
    respond_with(@tasks)
  end

  def show
    @task = Task.find(params[:id])
    respond_with(@task)
  end

  def create
    @task = Task.create(params.require(:task).permit(:name, :note, :due_at))
    respond_with(@task)
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params.require(:task).permit(:name, :note, :due_at))
    respond_with(@task, status: 200)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render nothing: true
  end
end
