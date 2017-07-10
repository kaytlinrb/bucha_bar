class KombuchasController < ApplicationController
  def index
    @kombuchas = Kombucha.all

  end

  def show
    @kombucha = Kombucha.find(params[:id])
    @reviews = @kombucha.reviews
  end

  def new
    @kombucha = Kombucha.new
  end

  def create
    @kombucha = Kombucha.new(kombucha_params)
    if @kombucha.save
      redirect_to  kombuchas_path
    else
      render :new
    end
  end

  def edit
    @kombucha = Kombucha.find(params[:id])
  end

  def update
    @kombucha= Kombucha.find(params[:id])
    if @kombucha.update(kombucha_params)
      redirect_to kombucha_path(@kombucha)
    else
      render :edit
    end
  end

  def destroy
    @kombucha = Kombucha.find(params[:id])
    @kombucha.destroy
    redirect_to kombuchas_path
  end

  private

  def kombucha_params
    params.require(:kombucha).permit(:name, :cost, :origin )
  end

end
