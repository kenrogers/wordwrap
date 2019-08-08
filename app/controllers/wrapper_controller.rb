class WrapperController < ApplicationController
  def index
  end

  def wrap
    columns = params[:columns].to_i
    @formatted_text = Wrapper.wrap(params[:text], columns)
    render :index
  end
end
