class TodosController < ApplicationController
  def show
    @todo = Todo.find(params[:id])
  end

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    @todo.save

    redirect_to @todo
  end

private
  def todo_params
    params.require(:todo).permit(:title, :completed)
  end
end
