class CreationPageController < ApplicationController
  def create
      @logo = Logo.new(params[:logo])
      @logo.save
      @render_logo = Logo.last
          render 'create'
         
      
  end
end
