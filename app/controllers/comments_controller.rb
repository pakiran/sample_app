class CommentsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      flash[:success] = "Commnet created!"
      redirect_to current_user
    else
      render current_user
    end
  end

  def destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end

end
