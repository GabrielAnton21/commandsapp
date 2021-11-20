class HomeController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  def index
    @post = Post.all
  end
  def desprenoi
  end
  def contact
  end
  def evenimente
  end
  def scoalaromana
  end
  def donatii 
  end
  def inscriere
  end
  def reservare
  end
  def consiliul
  end
  def regulamente
  end
  def misiuni
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_post
  #   @post = Post.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:heading, :subheading, :text, :link, :buttontext)
  end

  def image_params
    params.require(:image).permit(images: [])
  end
  
end
