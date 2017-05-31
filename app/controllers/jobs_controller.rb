class JobsController < ApplicationController

  def new
    @job = Job.new
  end


  def create
    @job = Job.new(
      params_jobs
    )

    @job.save

    if @job.save
      redirect_to job_path(@job)
      # job_path(@job) same as /jobs/#{@job.id}
    else
      render new_job_path
    end
  end


  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    @job.update(
      params_jobs
    )

    if @job.save
      redirect_to job_path(@job)
      # job_path(@job) same as /jobs/#{@job.id}
    else
      render edit_job_path
    end
  end


  def destroy
  end

  private
  def params_jobs
    params.require(:job).permit(:name, :description, :containers, :cost, :origin, :destination)
  end

end
