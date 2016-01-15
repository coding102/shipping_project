class Job < ActiveRecord::Base
    validates :job_name, presence: true
    validates :cargo, presence: true, length: { minimum: 50 }
    validates :containers_needed, presence: true
    validates :origin, presence: true 
    validates :destination, presence: true
    validates :cost, presence: true, numericality: { greater_than: 1000}
end
