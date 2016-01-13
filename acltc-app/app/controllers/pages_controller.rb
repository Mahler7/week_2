class PagesController < ApplicationController

  def my_future
    @the_reading = ["will be RICH!!!!", "will be poor .... sorry.", "should try back later, I have a headache."].sample
  end

  def lucky_numbers
    @numbers = []

    6.times do
      random_number = rand(1..60)
      @numbers << random_number
    end
    @numbers = @numbers.join(", ")
  end

  def bottles
    @song = ""
    bottles = 99
    99.times do
      @song += " #{bottles} bottles of beer on the wall, #{bottles} bottles of beer. Take one down, pass it around. #{bottles - 1} bottles of beer on the wall."
      bottles -= 1
    end
  end

  def page_counter
    @counter = 0
    @counter = @counter + 1
  end
  # def lucky_numbers
  #   @numbers = Array.new(6) { rand(1..60)}.join(", ")
  # end
end
