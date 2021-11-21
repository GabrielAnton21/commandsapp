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
    @school_bulletin = SchoolBulletin.all
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

  def school_bulletin_params
    params.require(:school_bulletin).permit(:bulletin, :heading_registration, :text_registration, :new_student_reg_link, :new_student_reg_btn_text, :cont_student_reg_link, :cont_student_reg_btn_text, :beginners_heading, :beginners_subheading, :beginners_text, :beginners_reg_link, :beginners_reg_btn_text, :adults_heading, :adults_subheading, :adults_text, :adults_reg_link, :adults_reg_btn_text, :classes_offered_text, :classes_offered_notice, :prev_classes_text, :image1_link, :image2_link, :image3_link, :image4_link, :image5_link, :image6_link, :image7_link, :image8_link)
  end
  
end
