class PagesController < ApplicationController

  def simpsons
    @current_time = Time.now.strftime "%l:%M %P %Y"
    @title = "simpsons"
  end

  def homer
    @title = "homer"
    @lotto = []
    6.times do
      number_generator = rand(1..60)
      @lotto << number_generator
    end
    @intro = "Homer will predict your lottery numbers"
    @lotto_numbers = "Your lotter numbers are #{@lotto.join("")}"
  end

  def maggie
    @title = "maggie"
    @fortunes = ["Good Night", "Daddy", "Sucking on Pacifier Sound", "Crying Sounds", "This is indeed a disturbing universe", "Sequel", "Daddily Doodily", "Ja ja", "Dooey shooey gavem mush", "Very well then, I'll drive! Ha ha ha! I need blood."]
    @intro = "Maggie Predicts Your Fortune"
    @fortune = "Maggie Says: #{@fortunes.sample}"
  end
end
