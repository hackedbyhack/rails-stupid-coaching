class CoachingController < ApplicationController
  def answer
    @answer = coach_answer(params[:query])
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message
      motivation = your_message == your_message.upcase ? "I can feel your motivation! " : ""
    end
    if your_message
      your_message.include?("?")
      return "#{motivation}Silly question, get dressed and go to work!"
    elsif your_message
      your_message.upcase == "I am going to work right now!".upcase
      return ""
    else
      return "#{motivation}I don't care, get dressed and go to work!"
    end
  end
end
