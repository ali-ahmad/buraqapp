class Naatlyric < ApplicationRecord
	belongs_to :naat
	belongs_to :language
	mount_uploader :photo, AvatarUploader
end