class JobsController < ApplicationController
    
    def index
        @jobs = Job.all.order('created_at DESC')
    end
    
        
    def new
        @job = Job.new
    end
    
    
    def create
        @job = Job.new(job_params)
        if @job.save
            redirect_to @job
        else
            render 'new'
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
        
        if @job.update(params[:job].permit(:job_name, :cargo, :containers_needed, :origin, :destination, :cost))
            redirect_to @job
        else
            render 'edit'
        end
    end
        
    
    private
        def job_params
            params.require(:job).permit(:job_name, :cargo, :containers_needed, :origin, :destination, :cost)
        end
        
        
        
        
end
