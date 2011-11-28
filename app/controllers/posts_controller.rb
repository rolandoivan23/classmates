class PostsController < ApplicationController
  def new
    @post = Post.new

    @usuario_id = params[:usuario_id]
  end

  def create
    post = Post.new(params[:post])
    post.usuario_id = params[:usuario_id]
    post.usuario_post = current_usuario.id
    post.pendiente = true
    usuario = Usuario.find(params[:usuario_id].to_i)
    puts usuario.login
    if usuario.post_pendientes == nil
      usuario.post_pendientes = 1
    else
      usuario.post_pendientes = usuario.post_pendientes + 1
    end
    
    post.save
    usuario.save
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    if @post.pendiente == true
      @post.pendiente = false
      current_usuario.post_pendientes = current_usuario.post_pendientes - 1
      @post.save
      current_usuario.save
    end
  end

end
