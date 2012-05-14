class BeanstalkController < ApplicationController
  def navigation
      @logos = beanstalkCompleteLogo.find(:all)
  end
end
