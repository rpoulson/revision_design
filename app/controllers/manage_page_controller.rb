class ManagePageController < ApplicationController
	def display
		if params[:view]
			query = ""
			if params[:completelogo][:size] != "-"
				query << "size = \"" << params[:completelogo][:size] << "\""
			end
			if params[:completelogo][:font] != "-"
				if query.length > 0
					query << " AND "
				end
				query << "font = \"" << params[:completelogo][:font] << "\""
			end
			if params[:completelogo][:color] != "-"
				if query.length > 0
					query << " AND "
				end
				query << "color = \"" << params[:completelogo][:color] << "\""
			end
			if params[:completelogo][:weight] != "-"
				if query.length > 0
					query << " AND "
				end
				query << "weight = \"" << params[:completelogo][:weight] << "\""
			end
			if query.length > 0
				@logos = CompleteLogo.where(query)
			else
				@logos = CompleteLogo.find(:all)
			end
		else
			@logos = CompleteLogo.find(:all)
		end
	end
end
