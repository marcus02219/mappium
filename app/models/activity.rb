class Activity
  include Mongoid::Document
  include Mongoid::Timestamps

  field :activity,            :type => String
  field :time,                :type => Time

  belongs_to :stop
end
