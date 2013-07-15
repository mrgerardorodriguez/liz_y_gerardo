class AdminController < ApplicationController
  before_filter :authenticate_party!
  before_filter :authenticate_admin

  def index

    @parties = Party.where(is_admin: false).order("current_sign_in_at DESC")
    @guests_count = 0
    @children_count = 0 
    @adults_count = 0 

    @parties.each do |party|
      @guests_count += party.guests.count
      @children_count += party.guests.where(age: 1..12).count
      @adults_count += party.guests.where(age: 13..99).count
    end

    @parties_reserved = Party.where(status_id: 2, is_admin: false).order("current_sign_in_at DESC")
    @adults_reserved_total = 0
    @children_reserved_total = 0

    @parties_reserved.each do |party|
      @adults_reserved_total += party.guests.where(age: 13..99, attending: true).count
      @children_reserved_total += party.guests.where(age: 1..12, attending: true).count
    end

    @parties_declined = Party.where(status_id: 3, is_admin: false).order("current_sign_in_at DESC")
    @adults_declined_total = 0
    @children_declined_total = 0

    @parties_declined.each do |party|
      @adults_declined_total += party.guests.where(age: 13..99).count
      @children_declined_total += party.guests.where(age: 1..12).count
    end

    @parties_not_responded = Party.where(status_id: 1, is_admin: false).order("current_sign_in_at DESC")
    @adults_not_responded_total = 0
    @children_not_responded_total = 0

    @parties_not_responded.each do |party|
      @adults_not_responded_total += party.guests.where(age: 13..99).count
      @children_not_responded_total += party.guests.where(age: 1..12).count
    end
  end

  private

    def authenticate_admin
      redirect_to(root_path) unless current_party.is_admin?
    end
end
