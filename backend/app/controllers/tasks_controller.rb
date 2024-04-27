class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy]

  def index
    render json: {
      tasks: current_user.tasks
    }, status: :ok
  end

  def create
    task = Task.new(task_params)

    if task.save
      render json: {
        task: task
      },status: :created
    else
      render json: {
        error: task.errors.full_messages.to_sentence
      }, status: :unprocessable_entity
    end
  end

  def complete
    if @task.update(completed: true)
      render json: {
        task: @task
      },status: :ok
    else
      render json: {
        error: @task.errors.full_messages.to_sentence
      }, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy

    render json: {
      message: "Task deleted successfully"
    }, status: :ok
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title)
  end
end
