class TodosController < ApplicationController
  # sets the todo instance found in private methods
  # allows refactoring to remove Todo.find(params[:id]) from new, create, show etc
  before_action :set_todo, only: [:edit, :update, :show, :destroy]
  
  def index
    @todos =Todo.all
  end
  
  
  def new
    @todo = Todo.new
  end
  
  
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice] = "Post successfully created"
      redirect_to todo_path(@todo)
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def show
  end
  
  def update
    if @todo.update(todo_params)
      flash[:notice] = "Todo successfully updated"
      redirect_to todo_path(@todo)
    else
      render 'edit'
    end
  end
  
  def destroy
    @todo.destroy
    flash[:notice] = "Todo successfully deleted"
    redirect_to todos_path
  end
    
  private
    def set_todo
      @todo = Todo.find(params[:id])
    end
    
    def todo_params
      params.require(:todo).permit(:name, :description)
    end
  
end
