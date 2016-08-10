class FavouriteStop
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :stop
  belongs_to :user
end
