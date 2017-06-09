class TeaStore < ActiveRecord::Base
	has_many :teas


	geocoded_by :address
	after_validation :geocode
end

