class HoldersController < ApplicationController

  before_action :authenticate_admin!, only:[:pending]
  before_action :authenticate_user!, except:[:index, :show, :search]

  def index
    @holders = Holder.all.where(status: "approved")
  end

  def show
    @holder = Holder.find(params[:id])

    @specimen = Specimen.find(params[:id])
  end


  def new
    @holder = Holder.new

    @specimen = Specimen.new

    render :new
  end

  def create
    @holder = Holder.create({user_id: current_user.id,
       date_acquired: params[:date_acquired], 
       status: "pending"})

    @specimen = Specimen.create(name: params[:name],
      scientific_name: params[:scientific_name],
      designation: params[:designation])

    @holder.specimen = @specimen
    @holder.save!

    flash[:success] = "Your Request has been submitted for review."
    redirect_to "/holders"
  end

  def edit 
    @holder = Holder.find(params[:id])

    

  end

  def update
    @holder = Holder.find(params[:id])

    @sold_to = Sold_to.create({user_id: params[:user_id],
      holder_id: params[:holder_id]})

    @holder.sold_to = @sold_to
    @holder.save


    

    flash[:message] = "User has been added to the list of lineage key holders."
    redirect_to "/holders"
  end

  def destroy
    @holder = Holder.find(params[:id])
    @holder.destroy 

    redirect_to '/holders'
  end

  def pending
    @holders = Holder.all.where(status: "pending")
  end

  def check_item_user_credentials!
    holder = Holder.find(params[:id])

    unless current_user.id == holder.user_id
      redirect_to '/'
    end
  end

  

end
