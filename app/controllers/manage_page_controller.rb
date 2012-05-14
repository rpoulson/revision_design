class ManagePageController < ApplicationController
	def display
		if params[:view]
			@logos = CompleteLogo.where("size = ? AND font = ? AND color = ? AND weight = ?", params[:completelogo][:size], params[:completelogo][:font], params[:completelogo][:color], params[:completelogo][:weight])
			# Client.where("orders_count = ? AND locked = ?", params[:orders], false)
		else
			@logos = CompleteLogo.find(:all)
		end
	end
end
