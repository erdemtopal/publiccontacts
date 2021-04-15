class HomeController < ApplicationController
  def index
  	@q = Friend.ransack(params[:q])
     @friends = @q.result(distinct: true)
  end

  def about
  	@q = Friend.ransack(params[:q])
     @friends = @q.result(distinct: true)
  end

  def my
  	@friends = Friend.all 
  	@q = Friend.ransack(params[:q])  ## iki satır search için
     @friends = @q.result(distinct: true)
  end
  
end
