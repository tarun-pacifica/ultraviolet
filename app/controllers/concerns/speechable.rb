require 'active_support/concern'
module Speechable
	extend ActiveSupport::Concern
	def prepare_content(city,index)
		@city = city
		@index = index
		hash = {'message': status}
		hash = hash.merge({'warning': warning}) if @index > 1
		hash = hash.merge({'warning': no_warning}) if @index < 1
		return hash
	end

	def no_warning
		"It's perfectly safe to go out in the sun right now"
	end

	def warning
		"It's not safe to go out in the sun right now."
	end

	def status
		"The current UV index for #{@city} is #{@index.to_s}"
	end
end

