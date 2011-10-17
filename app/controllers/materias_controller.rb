class MateriasController < ApplicationController
  def index
    @materias = Materia.all
  end

  def new
    @materia = Materia.new
  end

  def create
    @materia = Materia.new(params[:materia])
    if @materia.save
      flash[:notice] = "Materia guardada correctamente"
      redirect_to materia_url(@materia)
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
  end


  def agregar_materias
    @materias = Materia.all
    @alumno = Alumno.find(4)
    x = 1
    puts @materias.size
    @materias.each do
      unless params[x.to_s].nil?
        alumno = @materias[x-1].alumnos.build
        materia = @alumno.materias.build
        alumno.alumno_id = materia.alumno_id = @alumno.id
        alumno.materia_id = materia.materia_id = @materias[x-1].id
        @alumno.save
        @materias[x-1].save  
      end
      x = x + 1
    end
  end

  def alumnos
    @alumnos = Materia.find(params[:id]).alumnos
  end
end
