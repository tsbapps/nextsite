class CommentsController < ApplicationController
  
  def new
    @commentOb = Comment.new
    comment_list
	end
	def create
		@commentOb = Comment.new(comment_params)
	if	@commentOb.save
		redirect_to new_comment_path
  else 
    comment_list
    render 'new'
  end
  		# render plain: params[:comments].inspect
  end


  private

  	def comment_params
    	params.require(:comments).permit(:user_id, :comment)
  	end
    def comment_list
      @commentList = Comment.select('users.email, comments.comment, comments.id').joins('LEFT JOIN users on users.id = comments.user_id').where('users.id = ?', current_user.id)
    end

end
