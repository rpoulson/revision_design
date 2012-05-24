class BeanstalkController < ApplicationController
  def navigation
       # need to use characteristics of all memes, not just results, to generate checkboxes
      @all_memes = BeanstalkMeme.find(:all)
      
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
                @results = BeanstalkMeme.where(query)
            else
                @results = BeanstalkMeme.find(:all)
            end
      else
        @results = BeanstalkMeme.find(:all)
      end
  end

    def create
        @logos = BeanstalkCompleteLogo.find(:all)
        if params[:view]
            @logo = Logo.new(params[:logo])
            @logo.save
            @render_logo = Logo.last
            render 'create'
            elsif params[:save]
            @render_logo = Logo.last
            @save_logo = BeanstalkCompleteLogo.new(params[:complete_logo])
            @save_logo.save
            @logos = BeanstalkCompleteLogo.find(:all)
            render 'create'
        end
    end
    
    def display
        @logo = BeanstalkCompleteLogo.find(params[:id])
        
    end
    
    def load
        @url = BeanstalkUrl.new(params[:url])
        @url.save
        @urls = BeanstalkUrl.find(:all)
        render 'load'
    end
    
    def save
        @meme = BeanstalkMeme.new(params[:beanstalk_meme])
        @meme.save
        @beanstalk_memes = BeanstalkMeme.find(:all)
        render 'save'
    end
    
    def show
        @urls = BeanstalkMeme.find(:all) 
    end

end
