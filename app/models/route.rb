class Route
  include Mongoid::Document
  include Mongoid::Timestamps

  validates :category_id, presence: true

  field :name,                    :type => String, default: ""
  field :is_round_trip,           :type => Boolean, default: false
  field :start_time,              :type => Time
  field :stop_time,               :type => Time
  field :is_hard_start_time,      :type => Boolean, default: false
  field :is_hard_stop_time,       :type => Boolean, default: false
  field :departure_point_mode,    :type => String, default: ""
  field :departure_point_alt,     :type => String, default: ""
  field :departure_point_long,    :type => String, default: ""
  field :travel_mode,             :type => String, default: ""
  field :optimize_mode,           :type => String, default: ""
  field :avoid_highways,          :type => String, default: ""
  field :avoid_tolls,             :type => String, default: ""
  field :avoid_ferries,           :type => String, default: ""
  field :notes,                   :type => String, default: ""
  field :total_distance,          :type => Float
  field :total_time,              :type => Float

  belongs_to :user
  has_many :stops

  def user_email
    user.email
  end
end
