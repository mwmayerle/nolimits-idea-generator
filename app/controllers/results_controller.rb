class ResultsController < ApplicationController

	def index
		session[:id] = nil #this is id because heroku wants that for whatever reason and it's a nazi
		@manufacturers = Manufacturer.all
	end

	def create
		params.delete("authenticity_token")
		session[:id] ||= params
		manufacturers = Manufacturer.all.select { |manufacturer| session[:id]["manufacturers"].include?(manufacturer.manufacturer_name) }
		manufacturers = JSON.parse(manufacturers.to_json)

		begin
			products = manufacturers.map { |manufacturer| manufacturer["products"] }.flatten
			products = Result.process_params(session[:id], products)
			@results = Result.pick_attributes(session[:id], products)
		rescue
			flash[:error] = "Incompatible choices, please try different preferences"
			redirect_to root_path and return
		end

		render :show
	end
end
