class ResultsController < ApplicationController

	def index
		session[:id] = nil #this is id because heroku wants that for whatever reason
	end

	def create
		session[:id] ||= params.delete("authenticity_token")
		manufacturers = Manufacturer.all
		manufacturers = JSON.parse(manufacturers.to_json)
		products = manufacturers.map { |manufacturer| manufacturer["products"] }.flatten
		products = Result.process_params(session[:id], products)
		@results = Result.pick_attributes(session[:id], products)
		render :show
	end

end
