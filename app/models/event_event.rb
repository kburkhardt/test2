class EventEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :conflict
end
