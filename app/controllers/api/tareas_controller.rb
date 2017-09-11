class Api::TareasController < ApplicationController
  def index
    posts =  Tarea.all 
    render json: posts
  end
  def show
    @tarea = (params[:id])
    posts =  Tarea.find_by(id: @tarea)
    render json: posts
  end
  def destroy
    @tarea = Tarea.find(params[:id])
    @tarea.destroy
    render json: @tarea
    
  end
  def create
    @tarea = Tarea.new(tareas_params)
    @tarea.save()
    render json: @tarea
  end
  def update
    @tarea = Tarea.find(params[:id])
    @tarea.update_attributes(tareas_params)
    @tarea.update(tareas_params)
    render json: @tarea
  end 
  private
  def tareas_params
    params.permit(:activo, :descripcion, :prioridad, :titulo)
  end
end