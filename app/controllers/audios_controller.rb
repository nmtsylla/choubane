class AudiosController < InheritedResources::Base

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_audio, only: [:show, :edit, :update, :destroy]

  # GET /categorie_audios
  # GET /categorie_audios.json
  def index
    @audios = Audio.all
  end

  # GET /categorie_audios/1
  # GET /categorie_audios/1.json
  def show
  end

  # GET /categorie_audios/new
  def new
    @audio = Audio.new
  end

  # GET /categorie_audios/1/edit
  def edit
  end

  # POST /categorie_audios
  # POST /categorie_audios.json
  def create
    @audio = Audio.new(audio_params)
    @audio.user = current_user

    respond_to do |format|
      if @audio.save
        format.html { redirect_to @audio, notice: 'Categorie audio was successfully created.' }
        format.json { render :show, status: :created, location: @audio }
      else
        format.html { render :new }
        format.json { render json: @audio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorie_audios/1
  # PATCH/PUT /categorie_audios/1.json
  def update
    respond_to do |format|
      if @audio.update(audio_params)
        format.html { redirect_to @audio, notice: 'Categorie audio was successfully updated.' }
        format.json { render :show, status: :ok, location: @audio }
      else
        format.html { render :edit }
        format.json { render json: @audio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie_audios/1
  # DELETE /categorie_audios/1.json
  def destroy
    @audio.destroy
    respond_to do |format|
      format.html { redirect_to audios_url, notice: 'Categorie audio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def audio_download
    @audio = Audio.find(params[:id])
    file_path = @audio.piste_file_name
    if !file_path.nil?
      send_file "#{Rails.root}/public/system/audios/#{@audio.id}/original/#{file_path}", :x_sendfile => true
    else
      redirect_to audios_path
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_audio
    @audio = Audio.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def audio_params
    params.require(:audio).permit(:title, :author, :user_id, :image, :piste)
  end
end
