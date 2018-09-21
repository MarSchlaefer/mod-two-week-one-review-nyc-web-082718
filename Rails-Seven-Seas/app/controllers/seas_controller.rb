class SeasController < ApplicationController
  #define your controller actions here

  def welcome
    render "seas/welcome"
  end

  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
    #render "seas/new"
  end

  def create
    @sea = Sea.create(sea_params)

    render :show
  end

  def show
    @sea = Sea.find(params[:id])
    #render 'seas/show'
  end

  def edit
    @sea = Sea.find(params[:id])
    #render 'seas/edit'
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update_attributes(sea_params)

    render :show
    #render 'seas/update'
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.destroy

    redirect_to :seas
  end


  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end




end
