class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    @kitten.save

    flash[:notice] = 'Kitten added to list'
    redirect_to kitten_path(@kitten)
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    @kitten.update(kitten_params)

    flash[:notice] = 'Kitten info updated'
    redirect_to kitten_path(@kitten)
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy

    flash[:notice] = 'Kitten removed from list'
    redirect_to kittens_path
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
