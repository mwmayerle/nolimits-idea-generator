class ResultsController < ApplicationController

	def index
	end

	def create
		manufacturer = Manufacturer.find(1)
		manufacturer = JSON.parse(manufacturer.to_json)
		products = manufacturer["products"]
		products = Result.process_params(params, products)
		@results = Result.pick_attributes(params, products)
		render :show
	end

end
