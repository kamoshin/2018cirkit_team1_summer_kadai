class FoodstuffsController < ApplicationController
  layout 'foodstuffs'
  def index
    @foodstuffs = Foodstuff.all
  end

  def show
  end

  def add
    if request.post? then
      Foodstuff.create(foodstuff_params)
      redirect_to foodstuffs_path
    else
      @foodstuff = Foodstuff.new
    end
  end

  def edit
    @foodstuff = Foodstuff.find(params[:id])
    if request.patch? then
      @foodstuff.update(foodstuff_params)
      redirect_to foodstuffs_path
    end
  end

  def delete
    Foodstuff.find(params[:id]).destroy
    redirect_to foodstuffs_path
  end

  private
  def foodstuff_params
    params.require(:foodstuff).permit(:name, :image, :kcal)
  end
end
