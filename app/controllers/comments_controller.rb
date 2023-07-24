class CommentsController < ApplicationController
    
    def new
      @comment = Comment.new
    end

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.build(comment_params)
        
        # Si el comentario es anónimo
        if !current_user && params[:comment][:anonymous] == "1"
            @comment.user = User.find_or_create_by(name: 'Anónimo')
        else
            @comment.user = current_user # Asocia el comentario al usuario actualmente autenticado
        end

        if @comment.save
            redirect_to request.fullpath, notice: 'Comentario creado correctamente.'
        else
            redirect_to request.fullpath, alert: 'No se pudo crear el comentario.'
        end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content,:commentable_id,:commentable_type)
    end
  
    def find_commentable
      if params[:commentable_type] == 'Post'
        Post.find(params[:commentable_id])
      elsif params[:commentable_type] == 'User'
        User.find(params[:commentable_id])
      end
    end
  end