class PagesController < ApplicationController
  def home
    flash[:error] = ['coicic', 'rrrrr', 'rrrezrezre']
    flash[:notice] = 'coicic'
  end
end
