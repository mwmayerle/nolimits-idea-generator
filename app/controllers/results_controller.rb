class ResultsController < ApplicationController

	def index
		session[:preferences] = nil #this is id because heroku wants that for whatever reason
	end

	def create
		session[:preferences] ||= params.delete("authenticity_token")
		manufacturers = Manufacturer.all
		manufacturers = JSON.parse(manufacturers.to_json)
		products = manufacturers.map { |manufacturer| manufacturer["products"] }.flatten
		products = Result.process_params(session[:preferences], products)
		@results = Result.pick_attributes(session[:preferences], products)
		render :show
	end

end
