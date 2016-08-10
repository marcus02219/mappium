class Stop
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,                :type => String, default: ""
  field :point_number,        :type => Integer, default: -1
  field :latitude,            :type => String, default: ""
  field :longitude,           :type => String, default: ""
  field :address,             :type => String, default: ""
  field :phone,               :type => String, default: ""
  field :service_time,        :type => Integer
  field :mark_start,          :type => Boolean, default: false
  field :mark_end,            :type => Boolean, default: false

  field :drop_stop,           :type => String # stop_id

  field :check_in,            :type => Boolean, default: false
  field :is_favorite,         :type => Boolean, default: false
  field :color,               :type => Integer, default: 50   #min: 0 max: 100
  field :note,                :type => String, default: ""

  belongs_to :route
  belongs_to :user


end
