class Comment < ActiveRecord::Base
  belongs_to :contact# Remember to create a migration!
  belongs_to :user
  has_many :replies
end
