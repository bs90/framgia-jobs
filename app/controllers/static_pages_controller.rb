class StaticPagesController < ApplicationController
  def show
    render params[:file_name]
  end
end
