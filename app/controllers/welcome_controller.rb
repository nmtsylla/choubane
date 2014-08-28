class WelcomeController < ApplicationController
  def index
  end

  def audiotheque
    @categories = CategorieAudio.all
  end

  def principes
  end
end
