require 'geocoder'

class TeaStore < ActiveRecord::Base 
	extend Geocoder::Model::ActiveRecord
	has_many :teas

	geocoded_by :postcode
	after_validation :geocode

	def self.index
  		@q = self.ransack(params[:q])
  		@people = @q.result(distinct: true)
	end

end