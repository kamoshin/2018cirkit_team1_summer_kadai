class CalculatorController < ApplicationController
  def index
    @foodstuff = Foodstuff.all
  end
  
  def calculation
    if request.post? then
      obj.kcal.inject(:+)
    else
      @foodstuff = Foodstuff.new
    end
  end
end
