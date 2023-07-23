class CommentsController < ApplicationController
    def create
        @commentable = find_commentable
        @comment = @commentable.comments.build(comment_params)
        @comment.user = current_user
  
        if @comment.save
          redirect_to commentable_path, notice: 'Comentario creado correctamente.'
        else
          redirect_to commentable_path, alert: 'No se pudo crear el comentario.'
        end
      end
  
      private
  
      def comment_params
        params.require(:comment).permit(:content, :commentable_id, :commentable_type, :user_id)
      end
  
      def commentable_path
        # Lógica para redirigir a la página de detalle de Photo o User, dependiendo del tipo de comentario
      end
  
      def find_commentable
        if params[:commentable_type] == 'Post'
          Photo.find(params[:commentable_id])
        elsif params[:commentable_type] == 'User'
          User.find(params[:commentable_id])
        end
      end
    end
end
