require 'geocoder'
require 'ransack'

class TeaStore < ActiveRecord::Base 
	extend Geocoder::Model::ActiveRecord
	extend Ransack
	
	has_many :teas

	geocoded_by :postcode
	after_validation :geocode

	def self.search query
		ransack = self.ransack(name_cont: query)
		ransack.result.to_a
	end

end