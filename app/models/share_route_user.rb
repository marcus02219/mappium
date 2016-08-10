class ShareRouteUser
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,                  :type => String

  belongs_to :user
  belongs_to :route
  belongs_to :receiver,         class: "User"
end
