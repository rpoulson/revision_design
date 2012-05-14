class CreationPageController < ApplicationController
  def create
      if params[:view]
          @logo = Logo.new(params[:logo])
          @logo.save
          @render_logo = Logo.last
          render 'create'
      elsif params[:save]
          @render_logo = Logo.last
          @save_logo = CompleteLogo.new(params[:complete_logo])
          @save_logo.save
          render 'create'
      end
  end
end
