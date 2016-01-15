class JobsController < ApplicationController
    
    def index
    end
    
        
    def new
    end
    
    
    def create
        @job = Job.new(job_params)
        @job.save
        
        redirect_to @job
    end
    
    
    def show
        @job = Job.find(params [:id])
    end
    
    
    private
        def job_params
            params.require(:job).permit(:job_name, :cargo, :containers_needed, :origin, :destination, :cost)
        end
        
        
        
        
end
