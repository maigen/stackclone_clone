class VotesController < ApplicationController
  def create
    @answer = Answer.find(vote_params[:answer_id])
    @votes = Vote.all
    if @votes.select{ |vote| vote[:user_id] == current_user.id && vote[:answer_id] == vote_params[:answer_id].to_i }.length == 0
      @vote = Vote.create(vote_params)
      redirect_to question_path(@vote.answer.question)
    else
      redirect_to question_path(@answer.question)
    end

  end


private
  def vote_params
    params.require(:vote).permit(:answer_id, :value, :user_id)
  end
end
