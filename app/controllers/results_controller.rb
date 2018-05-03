class ResultsController < ApplicationController

	def index
		session[:params] = nil
	end

	def create
		session[:params] ||= params
		manufacturers = Manufacturer.all
		manufacturers = JSON.parse(manufacturers.to_json)
		products = manufacturers.map { |manufacturer| manufacturer["products"] }.flatten
		products = Result.process_params(session[:params], products)
		@results = Result.pick_attributes(session[:params], products)
		render :show
	end

end
