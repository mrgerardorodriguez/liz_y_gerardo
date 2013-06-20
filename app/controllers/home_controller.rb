class HomeController < ApplicationController
  before_filter :authenticate_party!

  def index
    @party = current_party
    @guests = Guest.where(:party_id => current_party.id).order('attending DESC, primary_guest DESC')
    @guest_age_array = 99.times.collect { |age| [age+1,age+1] }
  end

  def update

=begin
    @party = current_party
    @guests = Guest.where(:party_id => current_party.id).order('attending DESC, primary_guest DESC')
    @guest_age_array = 99.times.collect { |age| [age+1,age+1] }
=end

    # Get the new status id based on the submit choice
    new_status_id = Status.find_by_name(params[:response]).id

    # Add the status_id to the party attributes
    params[:party][:status_id] = new_status_id

    # Update whether each guest is attending
    params[:party][:guests_attributes].each do |key, guest|
      guest[:attending] = !guest[:name].blank? ? true : false
      
      guest[:primary_guest] = false if guest[:name].blank?
    end

    # @params = params[:party]

    # Update the party and guest attributes
    current_party.update_attributes(params[:party])

    # render 'index'
    redirect_to :root
  end

  def edit
    redirect_to :root
  end

  def create
    redirect_to :root
  end
end
