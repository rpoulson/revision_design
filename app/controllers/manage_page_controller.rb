class ManagePageController < ApplicationController
	def display
		@logos = CompleteLogo.find(:all)
	end
end
