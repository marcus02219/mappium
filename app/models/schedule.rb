class Schedule
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,                    :type => String
  field :time_start,              :type => Time
  field :time_end,                :type => Time
  field :priority,                :type => Integer
  field :is_one_time_schedule,    :type => Boolean

  belongs_to :user
  has_many :stops
end
