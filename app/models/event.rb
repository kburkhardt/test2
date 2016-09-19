class Event < ActiveRecord::Base

  def conflicts_with?(other)
	  start_time <= other.end_time && other.start_time <= end_time
  end

  def end_time
    start_time + duration.minutes
  end

end
