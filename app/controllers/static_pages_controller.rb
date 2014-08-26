class StaticPagesController < ApplicationController
  before_filter :authenticate_user!
  
  def home
  end

  def contact
  end

end
