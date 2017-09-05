class ComentariosController < ApplicationController

  def new
   @tarea = Tarea.find(params[:tarea_id]);
   @comentario = Comentario.new();
  end

  def create
   @mensaje = params[:comentario][:mensaje];
   @tarea = Tarea.find(params[:tarea_id]);
   @comentario = Comentario.new({
      :mensaje => @mensaje,
      :tarea => @tarea
   });
   if @comentario.save()
      redirect_to @tarea, :notice => "El comentario ha sido insertado";
   else
      render "new";
   end
  end

  def edit
   @tarea = Tarea.find(params[:tarea_id]);
   @comentario = Comentario.find(params[:id]);
   @mensaje = @comentario.mensaje;
  end

  def update
   @mensaje = params[:comentario][:mensaje];
   @tarea = Tarea.find(params[:tarea_id]);
   @comentario = Comentario.find(params[:id]);
   @comentario.mensaje = @mensaje;
   if @comentario.save()
      redirect_to @tarea, :notice => "El comentario ha sido modificado";
   else
      render "edit";
   end
  end

  def destroy
   @tarea = Tarea.find(params[:tarea_id]);
   @comentario = Comentario.find(params[:id]);
   if @comentario.destroy()
      redirect_to @tarea, :notice => "El comentario ha sido eliminado";
   else
      redirect_to @tarea, :notice => "El comentario no se ha podido eliminar";
   end
  end
end
