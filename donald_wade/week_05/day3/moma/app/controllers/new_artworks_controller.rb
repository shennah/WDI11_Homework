class NewArtworksController < ApplicationController
  before_action :set_new_artwork, only: [:show, :edit, :update, :destroy]

  # GET /new_artworks
  # GET /new_artworks.json
  def index
    @new_artworks = NewArtwork.all
  end

  # GET /new_artworks/1
  # GET /new_artworks/1.json
  def show
  end

  # GET /new_artworks/new
  def new
    @new_artwork = NewArtwork.new
  end

  # GET /new_artworks/1/edit
  def edit
  end

  # POST /new_artworks
  # POST /new_artworks.json
  def create
    @new_artwork = NewArtwork.new(new_artwork_params)

    respond_to do |format|
      if @new_artwork.save
        format.html { redirect_to @new_artwork, notice: 'New artwork was successfully created.' }
        format.json { render :show, status: :created, location: @new_artwork }
      else
        format.html { render :new }
        format.json { render json: @new_artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_artworks/1
  # PATCH/PUT /new_artworks/1.json
  def update
    respond_to do |format|
      if @new_artwork.update(new_artwork_params)
        format.html { redirect_to @new_artwork, notice: 'New artwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_artwork }
      else
        format.html { render :edit }
        format.json { render json: @new_artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_artworks/1
  # DELETE /new_artworks/1.json
  def destroy
    @new_artwork.destroy
    respond_to do |format|
      format.html { redirect_to new_artworks_url, notice: 'New artwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_artwork
      @new_artwork = NewArtwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_artwork_params
      params.require(:new_artwork).permit(:name, :year, :medium, :artist_id)
    end
end
