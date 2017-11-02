class Topic < ActiveRecord::Base
  has_many :topicaccounts
  has_many :accounts, through: :topicaccounts, dependent: :restrict_with_exception

end
