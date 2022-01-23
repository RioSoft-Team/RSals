class WellsController < ApplicationController
  def index
    if params[:search]
      @wells = Well.where( name: params[:search] )
    else
      @wells = Well.all                
    end
  end

  def show
    @well = Well.find(params[:id])
  end

  def new
    @well =Well.new 
  end

  def create
    @well =Well.new(well_params) 

    if @well.save
      redirect_to @well
    else
      render :new
    end
  end

  def edit
    @well = Well.find(params[:id])
  end

  def update
    @well = Well.find(params[:id])

    if @well.update(well_params)
      redirect_to @well
    else
      render :edit
    end
  end

  def destroy
    @well = Well.find(params[:id])
    @well.destroy

    redirect_to root_path
  end

  private
    def well_params
      params.require(:well).permit(:name, :complete, :facility, :company, :als )
    end
end
