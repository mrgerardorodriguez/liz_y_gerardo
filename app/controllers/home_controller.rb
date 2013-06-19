class HomeController < ApplicationController
  before_filter :authenticate_party!

  def index
    @party = current_party
    @guests = Guest.where(:party_id => current_party.id).order('age DESC')
  end

  def update
    # In case the button is 'update', count it as a 'reserve' submit
    params[:commit] = 'reserve' if params[:commit].downcase === 'update'

    # Get the new status id based on the submit choice
    new_status_id = Status.find_by_name(params[:commit].downcase).id

    # Add the status_id to the party attributes
    params[:party][:status_id] = new_status_id

    # Update the party and guest attributes
    current_party.update_attributes(params[:party])

    redirect_to :root;
  end

  def edit
    redirect_to :root;
  end

  def create
    redirect_to :root;
  end
end
