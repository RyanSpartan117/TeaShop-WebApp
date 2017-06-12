require 'geocoder'

class TeaStore < ActiveRecord::Base 
	extend Geocoder::Model::ActiveRecord
	has_many :teas

	geocoded_by :postcode
	after_validation :geocode

end