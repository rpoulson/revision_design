class ManagePageController < ApplicationController
	def display
		@logos = Logo.getAllLogos
	end
end
