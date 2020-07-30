module Response
	def response_api(object, status = :ok)
    	render json: object, status: status
	end
end