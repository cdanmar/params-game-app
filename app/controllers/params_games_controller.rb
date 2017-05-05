class ParamsGamesController < ApplicationController
  def query
    @query = params["name"].upcase
    if @query.first == "A"
    @result = "Hey, your name starts with the first letter of the alphabet!"
    else
    @result = "Your name #{@query}"
    end
  end

  def url_segment
    @message = params["this_is_a_key"]
  end

  def guess
    @user_guess = params["user_guess"].to_i
    winning_number = 42

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low"
    else
      @answer_message = "right on the money"
    end
  end

  def form_show

  end

  def form_send
    @message = params["form_message"]
  end

  def guess_form
 
  end

  def guess_send
   @user_guess = guess["user_guess"]
   winning_number = 42

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low"
    else
      @answer_message = "right on the money"
    end
  end     
end
