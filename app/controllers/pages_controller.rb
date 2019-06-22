class PagesController < ApplicationController
  protect_from_forgery with: :exception
  
  def home
    # 8render plain: "Hello World"
  end
  
  def about
  end
  
  def help
  end
  
end