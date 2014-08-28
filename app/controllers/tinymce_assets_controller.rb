class TinymceAssetsController < ApplicationController
  def create
    # Take upload from params[:file] and store it somehow...
    # Optionally also accept params[:hint] and consume if needed
    post = Post.create params.permit(:file)

    render json: {
        post: {
            url: post.file.url
        }
    }, content_type: "text/html"
  end
end