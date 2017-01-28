require 'active_support/concern'

module Scrapable
	extend ActiveSupport::Concern
	require 'open-uri'
	
	def fetch_radiation_levels
		agent = Mechanize.new
		agent.user_agent_alias = 'Mac Safari'
		uv_values = agent.get 'http://www.arpansa.gov.au/uvindex/realtime/xml/uvvalues.xml'
		xml = uv_values.xml
	end
end