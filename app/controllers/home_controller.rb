class HomeController < ApplicationController
  before_filter :authenticate_party!

  def index
  end
end
