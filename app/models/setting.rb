class Setting
  include Mongoid::Document
  include Mongoid::Timestamps

  field :favourite,               :type => Boolean, default: false
  field :navigation_app,          :type => String # apple_maps, google_maps, waze, here, sygic, navigon, yandex
  field :navigation_target,       :type => String # address, coordinate
  field :travel_mode,             :type => String # driving, biking, walking
  field :optimize_mode,           :type => String # fastest_time, shortest_distance
  field :is_to_avoid_highways,    :type => Boolean, default: false
  field :is_to_avoid_tolls,       :type => Boolean, default: false
  field :is_to_avoid_ferries,     :type => Boolean, default: false
  field :distance_unit,           :type => String # kilometers, miles
  field :service_time,            :type => Integer, default: 10
  field :share_gps_location,      :type => Boolean, default: false
  field :search_web,              :type => Boolean, default: false
  field :search_contacts,         :type => Boolean, default: false
  field :search_favorites,        :type => Boolean, default: false
  field :rapid_entry_mode,        :type => Boolean, default: false
  field :keyboard_default,        :type => String # alphabetic, numeric, smart
  field :confirm_optimization,    :type => Boolean, default: false
  field :confirm_search_result,   :type => Boolean, default: false
  field :prompt_for_checkins,     :type => Boolean, default: false
  field :stay_awake_mode,         :type => Boolean, default: false
  field :planner_list_view,       :type => String #sequence_proximity, sequence_name, proximity, name
  field :route_list,              :type => String # date, name
  field :activity_list,           :type => String # date, name

  belongs_to :user
end
