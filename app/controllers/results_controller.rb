class ResultsController < ApplicationController

	def index
	end

	def create
		manufacturers = Manufacturer.all
		manufacturers = JSON.parse(manufacturers.to_json)
		products = manufacturers.map { |manufacturer| manufacturer["products"] }.flatten
		products = Result.process_params(params, products)
		@results = Result.pick_attributes(params, products)
		render :show
	end

end
