class OriginalController < ApplicationController
	def navigation
	  # need to use characteristics of all memes, not just results, to generate checkboxes
	  @all_memes = Meme.find(:all)
      
      @color_entries = Set.new
      @image_entries = Set.new
      @text_entries = Set.new
      for meme in @all_memes do
      	if meme.color != nil
	      	@color_entries.add(meme.color)
	    end
	    if meme.image != nil
	      	@image_entries.add(meme.image)
		end
      	if meme.text != nil
	      	@text_entries.add(meme.text)
	    end
      end

      # generating results based on just checked boxes
      if params[:view]
			query = ""
			if params.has_key?(:colors)
				params[:colors].each do |color|
					if query.length > 0
						query << " OR "
					end
					query << "color = \"" << color << "\""
				end
			end
			if params.has_key?(:images)
				params[:images].each do |image|
					if query.length > 0
						query << " OR "
					end
					query << "image = \"" << image << "\""
				end
			end
			if params.has_key?(:text)
				params[:text].each do |text|
					if query.length > 0
						query << " OR "
					end
					query << "text = \"" << text << "\""
				end
			end
			if query.length > 0
				@results = Meme.where(query)
			else
				@results = Meme.find(:all)
			end
	  else
	  	@results = Meme.find(:all)
	  end	
  	end

end
