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
       sold_to_id: 0,
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
    # @sold_to = SoldTo.new
    
    @holder = Holder.find(params[:id])

    @users = User.all

  end

  def update
    @holder = Holder.find(params[:id])

    @sold_to = SoldTo.create(user_id: params[:user][:user_id],
      holder_id: @holder.id)

    

    @holder.sold_to_id = @sold_to.id
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
