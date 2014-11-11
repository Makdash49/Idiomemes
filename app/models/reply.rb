class Reply < ActiveRecord::Base
	belongs_to :comment
	# has_one :user, through: :comment
	belongs_to :user


  # Remember to create a migration!
end
