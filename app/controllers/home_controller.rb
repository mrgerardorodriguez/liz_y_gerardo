class HomeController < ApplicationController
  # before_filter :authenticate_party!

  def index
    # @party = current_party
    # @guests = Guest.where(:party_id => current_party.id).order('attending DESC, primary_guest DESC')

    # @guest_age_array = 99.times.collect do |age| 
    #   yearText = age === 0 ? "year" : "years"
    #   [(age+1).to_s + " #{yearText} old", age+1] 
    # end
    
    
  end

  def update

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
    # current_party.update_attributes(params[:party])

    respond_to do |format|  
      if current_party.update_attributes(params[:party])
        format.js 
        format.html { redirect_to :root, :notice => 'Party was updated.' }
      else  
        format.js
        format.html { redirect_to :root, :notice => 'Party failed to update.' }
      end  
    end  

    # render 'index'
    # redirect_to :root
  end

  def edit
    redirect_to :root
  end

  def create
    redirect_to :root
  end
end
