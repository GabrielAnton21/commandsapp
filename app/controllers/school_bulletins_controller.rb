class SchoolBulletinsController < ApplicationController
  before_action :set_school_bulletin, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!

  # GET /school_bulletins or /school_bulletins.json
  def index
    @school_bulletins = SchoolBulletin.all
  end

  # GET /school_bulletins/1 or /school_bulletins/1.json
  def show
  end

  # GET /school_bulletins/new
  def new
    @school_bulletin = SchoolBulletin.new
  end

  # GET /school_bulletins/1/edit
  def edit
  end

  # POST /school_bulletins or /school_bulletins.json
  def create
    @school_bulletin = SchoolBulletin.new(school_bulletin_params)

    respond_to do |format|
      if @school_bulletin.save
        format.html { redirect_to @school_bulletin, notice: "School bulletin was successfully created." }
        format.json { render :show, status: :created, location: @school_bulletin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @school_bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_bulletins/1 or /school_bulletins/1.json
  def update
    respond_to do |format|
      if @school_bulletin.update(school_bulletin_params)
        format.html { redirect_to @school_bulletin, notice: "School bulletin was successfully updated." }
        format.json { render :show, status: :ok, location: @school_bulletin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @school_bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_bulletins/1 or /school_bulletins/1.json
  def destroy
    @school_bulletin.destroy
    respond_to do |format|
      format.html { redirect_to school_bulletins_url, notice: "School bulletin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_bulletin
      @school_bulletin = SchoolBulletin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_bulletin_params
      params.require(:school_bulletin).permit(:bulletin, :heading_registration, :text_registration, :new_student_reg_link, :new_student_reg_btn_text, :cont_student_reg_link, :cont_student_reg_btn_text, :beginners_heading, :beginners_subheading, :beginners_text, :beginners_reg_link, :beginners_reg_btn_text, :adults_heading, :adults_subheading, :adults_text, :adults_reg_link, :adults_reg_btn_text, :classes_offered_text, :classes_offered_notice, :prev_classes_text, :image1_link, :image2_link, :image3_link, :image4_link, :image5_link, :image6_link, :image7_link, :image8_link)
    end
end
