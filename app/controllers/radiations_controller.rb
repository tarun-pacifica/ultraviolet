class RadiationsController < ApplicationController
	include Speechable
	def create
		@city = params['request']['intent']['slots']['City']['value'].downcase
		@index = Radiation.uv_index @city
		@content = prepare_content @city,@index
		@response = prepare_response @content
		render json: @response 
	end
	def prepare_response(content)
		@message = content[:message]
		@warning = content[:warning]

		session_attributes = {"previous_session":"something"}
		session_end = true
		return {
		      "response": {
		        "outputSpeech": {
		          "type": "PlainText",
		          "text": "#{@message}', #{@warning}"
		        },
		        "shouldEndSession": session_end
		      },
		      "sessionAttributes": session_attributes
		    }
	end
end