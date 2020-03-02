class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @infos = {}
    if params[:question].nil? || params[:question].empty?
      @infos[:no_info] = true
    else
      @infos[:question] = params[:question]
      if params[:question] == 'I am going to work'
        @infos[:answer] = 'Great!'
      elsif params[:question][-1] == '?'
        @infos[:answer] = 'Silly question, get dressed and go to work!'
      else
        @infos[:answer] = "I don't care, get dressed and go to work!"
      end
    end
    @infos
  end
end
