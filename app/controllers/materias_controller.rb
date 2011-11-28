class MateriasController < ApplicationController
  def index
    @materias = Materia.all.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @materia = Materia.new
  end

  def create
    @materia = Materia.new(params[:materia])
    if @materia.save
      flash[:notice] = "Materia guardada correctamente"
      redirect_to materias_url
    else
      render 'new'
    end
  end

  def edit
    @materia = Materia.find(params[:id])
  end

  def show
    @materia = Materia.find(params[:id])
  end

  def agregar
    @materias = Materia.all
    @materias_usuario = []
    current_usuario.materias.each do |materia|
      mat_usr = Materia.find(materia.materia_id)
      @materias_usuario << mat_usr
    end
    
  end


  def agregar_materias
    @materias = Materia.all
    @usuario = Usuario.find(current_usuario.id)
    x = 1
    @materias.each do
      unless params[x.to_s].nil?
        alumno = @materias[x-1].alumnos.build
        materia = @usuario.materias.build
        alumno.alumno_id = materia.alumno_id = @usuario.id
        alumno.materia_id = materia.materia_id = @materias[x-1].id
        @usuario.save
          @materias[x-1].save
      end
      x = x + 1
    end
    redirect_to materias_alumno_url(current_usuario.id)
  end

  def usuarios
    @alumnos = Materia.find(params[:id]).alumnos
  end

  def destroy
    @materia = Materia.find(params[:id])
    @materia.delete
    redirect_to materias_url
  end
end
