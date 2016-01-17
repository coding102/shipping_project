class Boat < ActiveRecord::Base
    has_many :boat_jobs
    has_one :job, :through => :boat_jobs
end
