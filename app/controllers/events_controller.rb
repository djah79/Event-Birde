class EventsController < ApplicationController
	before_action :authenticate_user!
	def index
		@event = Event.all
	end
	def show
		@event = Event.find(params[:id])
		@u = User.find(Event.find(params[:id]).admin_id)
	end
	def create
		date = "#{params[:j].to_s} #{params[:h].to_s}"
		date = date.to_time
		@event = Event.new(title: params[:title], description: params[:description], location: params[:location], duration: params[:duration], price: params[:price], start_date: date, admin_id: current_user.id)
		if @event.save
			redirect_to events_path
		else
			render :new
		end
	end
end
