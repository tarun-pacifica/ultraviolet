require 'active_support/concern'
module Speechable
	extend ActiveSupport::Concern
	def prepare_content(city,index)
		hash = {'message': status}
		hash.merge ({'warning': warning}) if @index > 1
	end

	def warning
		"It's not safe to go out in the sun right now."
	end

	def status
		"The current UV index for #{@city} is #{@index}"
	end
end

