class CreateSchoolBulletins < ActiveRecord::Migration[6.1]
  def change
    create_table :school_bulletins do |t|
      t.string :bulletin
      t.string :heading_registration
      t.string :text_registration
      t.string :new_student_reg_link
      t.string :new_student_reg_btn_text
      t.string :cont_student_reg_link
      t.string :cont_student_reg_btn_text
      t.string :beginners_heading
      t.string :beginners_subheading
      t.string :beginners_text
      t.string :beginners_reg_link
      t.string :beginners_reg_btn_text
      t.string :adults_heading
      t.string :adults_subheading
      t.string :adults_text
      t.string :adults_reg_link
      t.string :adults_reg_btn_text
      t.string :classes_offered_text
      t.string :classes_offered_notice
      t.string :prev_classes_text
      t.string :image1_link
      t.string :image2_link
      t.string :image3_link
      t.string :image4_link
      t.string :image5_link
      t.string :image6_link
      t.string :image7_link
      t.string :image8_link

      t.timestamps
    end
  end
end
