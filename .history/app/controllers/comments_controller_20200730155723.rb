class CommentsController < ApplicationController
  def create
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:board_id, :name, :comment)
  end
end
