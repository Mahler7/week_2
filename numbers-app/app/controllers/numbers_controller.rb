class NumbersController < ApplicationController

  def name

    @cap_name = params[:cap_name].upcase

    if @cap_name[0] == "j".upcase
      @message_1 = "J should be the first letter in the alphabet."
    else
      @message_2 = "You wish your name began with J."
    end

  end

  def guessing
    numbers = params[:numbers].to_i
    answer = 36
    if numbers == answer
      @guess = "You've guessed correctly"
    elsif numbers < answer
      @guess = "You've guessed too low"
    elsif numbers > answer
      @guess = "You've guessed too high"
    end
  end
  
  def url_example
    @message = params[:wildcard]
  end

  def get_form

  end

  def submit_form
    @message = params[:message]#message because of label_tag and text_field tag in html
  end

  def numbers_form

  end

  def numbers_submit
    numbers = params[:guess].to_i
    answer = 36
    if numbers == answer
      @guess = "You've guessed correctly"
    elsif numbers < answer
      @guess = "You've guessed too low"
    else
      @guess = "You've guessed too high"
    end
  end
end
