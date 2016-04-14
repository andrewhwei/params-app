class PagesController < ApplicationController

  def my_name
    @name = params[:name].upcase

    if @name[0] == "A"
      @special_message = "Hey, your name starts with the first letter of the alphabet!"
    end
  end

  def guessing_game
    right_number = 36
    chosen_number = params[:number].to_i

    if chosen_number == right_number
      @winning_message = "Congrats! You guessed the right number! It was 36!"
    elsif chosen_number > right_number
      @high_message = "You guessed too high. Try again!"
    else
      @low_message = "You guessed too low. Try again!"
    end
  end

  def the_button
    
  end
end
