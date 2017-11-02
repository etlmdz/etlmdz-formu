class Topicaccount < ActiveRecord::Base
  belongs_to :topic
  belongs_to :account
end
