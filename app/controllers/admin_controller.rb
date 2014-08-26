class AdminController < ApplicationController
  def home
  	@user = User.select('id,email').all;
  end
end
