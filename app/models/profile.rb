class Profile < ApplicationRecord
	enum role: [:profile]
  	after_initialize :set_default_role, :if => :new_record?
	
	def set_default_role
		self.role ||= :profile
	end
end
