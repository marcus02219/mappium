class GroupMember
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user
  belongs_to :group
end
