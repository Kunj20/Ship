class AssignmentsController < ApplicationController
  def index
    @boats = Boat.all
    @jobs = Job.all
  end


  def new
    @boats = Boat.all
    @jobs = Job.all
    @assignment = Assignment.new
  end


  def create
    @boats = Boat.all
    @jobs = Job.all

    @boat = Boat.find(params[:boat][:id])
    @job = Job.find(params[:job][:id])

    @assignment = Assignment.create(
      @boat, @job
    )

    if @assignment.save
      redirect_to assignments_path
    else
      render new_assignment_path
    end
  end


  def show
  end


  def edit
  end


  def update
  end


  def destroy
  end

  # private
  # def params_assignments
  #   params.require(:assignment).permit(:name, :description, :containers, :cost, :origin, :destination)
  # end

end
