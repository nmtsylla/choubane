class CategorieAudiosController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_categorie_audio, only: [:show, :edit, :update, :destroy]

  # GET /categorie_audios
  # GET /categorie_audios.json
  def index
    @categorie_audios = CategorieAudio.all
  end

  # GET /categorie_audios/1
  # GET /categorie_audios/1.json
  def show
  end

  # GET /categorie_audios/new
  def new
    @categorie_audio = CategorieAudio.new
  end

  # GET /categorie_audios/1/edit
  def edit
  end

  # POST /categorie_audios
  # POST /categorie_audios.json
  def create
    @categorie_audio = CategorieAudio.new(categorie_audio_params)

    respond_to do |format|
      if @categorie_audio.save
        format.html { redirect_to @categorie_audio, notice: 'Categorie audio was successfully created.' }
        format.json { render :show, status: :created, location: @categorie_audio }
      else
        format.html { render :new }
        format.json { render json: @categorie_audio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorie_audios/1
  # PATCH/PUT /categorie_audios/1.json
  def update
    respond_to do |format|
      if @categorie_audio.update(categorie_audio_params)
        format.html { redirect_to @categorie_audio, notice: 'Categorie audio was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorie_audio }
      else
        format.html { render :edit }
        format.json { render json: @categorie_audio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie_audios/1
  # DELETE /categorie_audios/1.json
  def destroy
    @categorie_audio.destroy
    respond_to do |format|
      format.html { redirect_to categorie_audios_url, notice: 'Categorie audio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorie_audio
      @categorie_audio = CategorieAudio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorie_audio_params
      params.require(:categorie_audio).permit(:name, :description, :user_id)
    end
end
