class StaticPagesController < ApplicationController
  def index
    @drawings = Drawing.all
  end

  def about
  end

  def contact
  end
end
