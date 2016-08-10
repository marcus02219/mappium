class Group
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,               type: String, default: ""

  belongs_to :user
  has_many :group_members
end
