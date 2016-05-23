class Job < ActiveRecord::Base
  INVALIDATION_MESSAGE = "[[JOB HAS BEEN FILLED]]"
  def invalidate_job!
  	self.description.prepend(INVALIDATION_MESSAGE)
  	self.save!
  end
end
