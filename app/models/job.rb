class Job < ActiveRecord::Base
    has_many :boat_jobs, dependent: :destroy
    has_one :boat, :through => :boat_jobs
    has_one :user #, :through => :boat_jobs 
    
#    LOCATIONS = ["NY", "LA", "Paris"]
    
    validates :job_name, presence: true
    validates :cargo, presence: true, length: { minimum: 50 }
    validates :containers_needed, presence: true
    validates :origin, presence: true 
    validates :destination, presence: true
    validates :cost, presence: true, numericality: { greater_than: 1000}
    
#    def get_origin
#        LOCATIONS[self.origin] 
#    end
end

#@job.get_origin
#=> ny
