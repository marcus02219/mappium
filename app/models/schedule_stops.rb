class ScheduleStop
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :schedule
  belongs_to :stop
end
