class Book < ActiveRecord::Base
	has_attached_file :avatar

	# Validate content type
	validates_attachment_content_type :avatar, :content_type => /\Aimage/

	# Validate filename
	validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]

	# Explicitly do not validate
	do_not_validate_attachment_file_type :avatar
end
