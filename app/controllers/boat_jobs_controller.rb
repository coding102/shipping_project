class BoatJobsController < ApplicationController
    
    
    def create
        @job = Job.find(params[:job_id])
        @boat_job = @job.boat_jobs.create(params[:boat_job].permit(:status, :issues))
        
        redirect_to job_path(@job)
    end
    
    
end
