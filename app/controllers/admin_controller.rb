class AdminController < ApplicationController
  before_filter :authenticate_party!
  before_filter :authenticate_admin

  def index
    @guests = Guest.all
    @children = Guest.where(age: 1..12)
    @adults = Guest.where(age: 13..99)

    @parties = Party.order("current_sign_in_at ASC")
    @parties_reserved = Party.where(status_id: 2)

    @adults_reserved_total = 0
    @children_reserved_total = 0

    @parties_reserved.each do |party|
      @adults_reserved_total += party.guests.where(age: 13..99, attending: true).count
      @children_reserved_total += party.guests.where(age: 1..12, attending: true).count
    end
  end

  private

    def authenticate_admin
      redirect_to(root_path) unless current_party.is_admin?
    end
end
