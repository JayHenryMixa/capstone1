class SpecimensController < ApplicationController
  
  def index
    @specimens = Specimen.all
  end

  def show
    @specimen = Specimen.find(params[:id])
  end

  def new
    @specimen = Specimen.new

    render :new
  end

  def create
    @specimen = Specimen.create({name: params[:name], 
      scientific_name: params[:scientific_name],
      designation: params[:designation]})

    redirect_to "/specimens/#{@specimen.id}"
  end 
  
  def edit
    @specimen = Specimen.find(params[:id])
  end

  def update
    @specimen = Specimen.find(params[:id])

    @specimen.update({name: params[:name], 
      scientific_name: params[:scientific_name],
      designation: params[:designation]})

    redirect_to "/specimens"
  end

  def destroy
    #will be an admin function
    @specimen = Specimen.find(params[:id])
    @specimen.destroy

    redirect_to '/specimens'
  end
  
end
