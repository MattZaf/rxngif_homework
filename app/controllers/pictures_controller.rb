class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
    render 'show'
  end

  def index
    @list_of_pictures = Picture.all
    render 'index'
  end

  def new
    render 'new'
  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save

    redirect_to("http://localhost:3000/all_pictures/#{p.id}", { :notice => "Picture created succesfully"})
  end

  def destroy
    p = Picture.find(params[:id])
    p.destroy
    #redirect_to("http://localhost:3000/all_pictures", { :notice => "Picture has been destroyed"})
    #flash[:notice] ="Successful deletion"
  end

  def edit
  @picture = Picture.find(params[:id])
  end

  def update
    p = Picture.find(params[:id])
    p.source = params[:source]
    p.caption = params[:caption]
    p.save

    redirect_to "http://localhost:300/picture_details/#{p.id}", :notice => "Updated picture successfully."
  end

end
