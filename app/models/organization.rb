class Organization < ApplicationRecord
	searchkick
	mount_uploader :large_photo, AvatarUploader
	mount_uploader :photo, AvatarUploader
end