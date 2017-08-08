class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = coach_answer_enhanced(params[:query])
  end

  def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
    if (your_message.downcase == "i am going to work right now!") == true
      then return ""
    elsif (your_message == your_message.upcase) && your_message.include?("?")
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    elsif (your_message == your_message.upcase) == true
      then return "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif your_message.include?("?") == true
      then return "Silly question, get dressed and go to work!"
    else "I don't care, get dressed and go to work!"
    end
  end
end
