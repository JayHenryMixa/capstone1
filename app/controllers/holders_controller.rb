class HoldersController < ApplicationController

  def index
    @holders = Holder.all 
  end

  def show
    @holder = Holder.find(params[:id])
  end

  def new
    @holder = Holder.new
  end

  def create
    @holder = Holder.create({user_id: params[:user_id],
      specimen_id: params[:specimen_id],
      date_acquired: params[:date_acquired],
      acquired_from: params[:acquired_from] 
      })

    redirect_to "/holders"
  end

  def edit 
    @holder = Holder.find(params[:id])
  end

  def update
    @holder = Holder.find(params[:id])

    @holder.update({user_id: params[:user_id],
      specimen_id: params[:specimen_id],
      date_acquired: params[:date_acquired],
      acquired_from: params[:acquired_from]
      })

    redirect_to "/holders"
  end

  def destroy
    @holder = Holder.find(params[:id])
    @holder.destroy 

    redirect_to '/holders'
  end

end
