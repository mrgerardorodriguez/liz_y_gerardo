class AdminController < ApplicationController
  before_filter :authenticate_party!
  before_filter :authenticate_admin

  def index
    @parties = Party.order("updated_at DESC")
    # @parties_reserved = Party.where()
  end

  private

    def authenticate_admin
      redirect_to(root_path) unless current_party.is_admin?
    end
end
