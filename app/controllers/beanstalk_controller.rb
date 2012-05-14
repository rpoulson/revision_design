class BeanstalkController < ApplicationController
  def navigation
      @logos = BeanstalkCompleteLogo.find(:all)
  end
    def create
        if params[:view]
            @logo = Logo.new(params[:logo])
            @logo.save
            @render_logo = Logo.last
            render 'create'
            elsif params[:save]
            @render_logo = Logo.last
            @save_logo = BeanstalkCompleteLogo.new(params[:complete_logo])
            @save_logo.save
            render 'create'
        end
 
    end
    
    def display
        @logo = BeanstalkCompleteLogo.find(params[:id])
        
    end
end
