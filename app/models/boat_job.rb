class BoatJob < ActiveRecord::Base
    belongs_to :job
    belongs_to :boat
end
