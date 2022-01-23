class TanksController < ApplicationController
  http_basic_authenticate_with name: "riosoft", password: "RioSoft", only: :destroy

  def create
    @well = Well.find(params[:well_id])
    @tank = @well.tanks.create(tank_params)
    redirect_to well_path(@well)
  end

  def destroy
    @well = Well.find(params[:well_id])
    @tank = @well.tanks.find(params[:id])
    @tank.destroy
    redirect_to well_path(@well), status: 303
  end

  private
    def tank_params
      params.require(:tank).permit(:supplier, :serial)
    end
end
