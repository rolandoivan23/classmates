# encoding: utf-8
class AlumnosController < ApplicationController
  def index
    @alumnos = Alumno.all
  end

  def new
    @alumno = Alumno.new
  end

  def create
    @alumno = Alumno.new(params[:alumno])
    @usuario = Usuario.new(params[:alumno])
    @alumno.post_pendientes = 0

    if @alumno.save and @usuario.save
      flash[:notice] = "Alumno guardado correctamente"
      redirect_to @alumno
    else
      render 'new'
    end
  end

  def edit
    @alumno = Alumno.find(params[:id])
  end

  def show
    @alumno = Alumno.find(params[:id])
  end

  def materias
    @materias_alumno = Alumno.find(4).materias
  end
end
