class BoatsController < ApplicationController

  def new
    @boat = Boat.all
  end


  def new
    @boat = Boat.new
  end


  def create
    @boat = Boat.new(
      params_boat
    )

    if @boat.save
      redirect_to boat_path(@boat)
      # boat_path(@boat) same as /boats/#{@boat.id}
    else
      render new_boat_path
    end
  end


  def show
    @boat = Boat.find(params[:id])
  end


  def edit
    @boat = Boat.find(params[:id])
  end


  def update
    @boat = Boat.find(params[:id])

    @boat.update(
      params_boat
    )

    if @boat.save
      redirect_to boat_path(@boat)
      # boat_path(@boat) same as /boats/#{@boat.id}
    else
      render edit_boat_path
    end
  end


  def destroy
  end

  private
  def params_jobs
    params.require(:boat).permit(:name, :containers, :location)
  end
end
