class CategoriePostsController < InheritedResources::Base

    #->Prelang (scaffolding:rails/scope_to_user)
    before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

    before_action :set_categorie_post, only: [:show, :edit, :update, :destroy]

    # GET /categorie_posts
    # GET /categorie_posts.json
    def index
      @categorie_posts = CategoriePost.all
    end

    # GET /categorie_posts/1
    # GET /categorie_posts/1.json
    def show
    end

    # GET /categorie_posts/new
    def new
      @categorie_post = CategoriePost.new
    end

    # GET /categorie_posts/1/edit
    def edit
    end

    # POST /categorie_posts
    # POST /categorie_posts.json
    def create
      @categorie_post = CategoriePost.new(categorie_post_params)
      @categorie_post.user = current_user

      respond_to do |format|
        if @categorie_post.save
          format.html { redirect_to @categorie_post, notice: 'Categorie post was successfully created.' }
          format.json { render :show, status: :created, location: @categorie_post }
        else
          format.html { render :new }
          format.json { render json: @categorie_post.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /categorie_posts/1
    # PATCH/PUT /categorie_posts/1.json
    def update
      respond_to do |format|
        if @categorie_post.update(categorie_post_params)
          format.html { redirect_to @categorie_post, notice: 'Categorie post was successfully updated.' }
          format.json { render :show, status: :ok, location: @categorie_post }
        else
          format.html { render :edit }
          format.json { render json: @categorie_post.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /categorie_posts/1
    # DELETE /categorie_posts/1.json
    def destroy
      @categorie_post.destroy
      respond_to do |format|
        format.html { redirect_to categorie_posts_url, notice: 'Categorie post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorie_post
      @categorie_post = CategoriePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorie_post_params
      params.require(:categorie_post).permit(:name, :description, :user_id)
    end

end
