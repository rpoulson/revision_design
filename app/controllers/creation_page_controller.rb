class CreationPageController < ApplicationController
  def create
      @logos = CompleteLogo.find(:all)
      if params[:view]
          @logo = Logo.new(params[:logo])
          @logo.save
          @render_logo = Logo.last
          render 'create'
      elsif params[:save]
          @render_logo = Logo.last
          @save_logo = CompleteLogo.new(params[:complete_logo])
          @save_logo.save
          @logos = CompleteLogo.find(:all)
          render 'create'
      end
  end
    
    def load
        @url = MemeUrl.new(params[:url])
        @url.save
        @urls = MemeUrl.find(:all)
        render 'load'
    end
end
