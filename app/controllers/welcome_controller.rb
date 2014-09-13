class WelcomeController < ApplicationController
  def index
  end

  def audiotheque
    @categories = CategorieAudio.all
    @audios = Audio.all
  end

  def principes
  end
end
