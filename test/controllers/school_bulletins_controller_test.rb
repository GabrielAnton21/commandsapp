require "test_helper"

class SchoolBulletinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_bulletin = school_bulletins(:one)
  end

  test "should get index" do
    get school_bulletins_url
    assert_response :success
  end

  test "should get new" do
    get new_school_bulletin_url
    assert_response :success
  end

  test "should create school_bulletin" do
    assert_difference('SchoolBulletin.count') do
      post school_bulletins_url, params: { school_bulletin: { adults_heading: @school_bulletin.adults_heading, adults_reg_btn_text: @school_bulletin.adults_reg_btn_text, adults_reg_link: @school_bulletin.adults_reg_link, adults_subheading: @school_bulletin.adults_subheading, adults_text: @school_bulletin.adults_text, beginners_heading: @school_bulletin.beginners_heading, beginners_reg_btn_text: @school_bulletin.beginners_reg_btn_text, beginners_reg_link: @school_bulletin.beginners_reg_link, beginners_subheading: @school_bulletin.beginners_subheading, beginners_text: @school_bulletin.beginners_text, bulletin: @school_bulletin.bulletin, classes_offered_notice: @school_bulletin.classes_offered_notice, classes_offered_text: @school_bulletin.classes_offered_text, cont_student_reg_btn_text: @school_bulletin.cont_student_reg_btn_text, cont_student_reg_link: @school_bulletin.cont_student_reg_link, heading_registration: @school_bulletin.heading_registration, image1_link: @school_bulletin.image1_link, image2_link: @school_bulletin.image2_link, image3_link: @school_bulletin.image3_link, image4_link: @school_bulletin.image4_link, image5_link: @school_bulletin.image5_link, image6_link: @school_bulletin.image6_link, image7_link: @school_bulletin.image7_link, image8_link: @school_bulletin.image8_link, new_student_reg_btn_text: @school_bulletin.new_student_reg_btn_text, new_student_reg_link: @school_bulletin.new_student_reg_link, prev_classes_text: @school_bulletin.prev_classes_text, text_registration: @school_bulletin.text_registration } }
    end

    assert_redirected_to school_bulletin_url(SchoolBulletin.last)
  end

  test "should show school_bulletin" do
    get school_bulletin_url(@school_bulletin)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_bulletin_url(@school_bulletin)
    assert_response :success
  end

  test "should update school_bulletin" do
    patch school_bulletin_url(@school_bulletin), params: { school_bulletin: { adults_heading: @school_bulletin.adults_heading, adults_reg_btn_text: @school_bulletin.adults_reg_btn_text, adults_reg_link: @school_bulletin.adults_reg_link, adults_subheading: @school_bulletin.adults_subheading, adults_text: @school_bulletin.adults_text, beginners_heading: @school_bulletin.beginners_heading, beginners_reg_btn_text: @school_bulletin.beginners_reg_btn_text, beginners_reg_link: @school_bulletin.beginners_reg_link, beginners_subheading: @school_bulletin.beginners_subheading, beginners_text: @school_bulletin.beginners_text, bulletin: @school_bulletin.bulletin, classes_offered_notice: @school_bulletin.classes_offered_notice, classes_offered_text: @school_bulletin.classes_offered_text, cont_student_reg_btn_text: @school_bulletin.cont_student_reg_btn_text, cont_student_reg_link: @school_bulletin.cont_student_reg_link, heading_registration: @school_bulletin.heading_registration, image1_link: @school_bulletin.image1_link, image2_link: @school_bulletin.image2_link, image3_link: @school_bulletin.image3_link, image4_link: @school_bulletin.image4_link, image5_link: @school_bulletin.image5_link, image6_link: @school_bulletin.image6_link, image7_link: @school_bulletin.image7_link, image8_link: @school_bulletin.image8_link, new_student_reg_btn_text: @school_bulletin.new_student_reg_btn_text, new_student_reg_link: @school_bulletin.new_student_reg_link, prev_classes_text: @school_bulletin.prev_classes_text, text_registration: @school_bulletin.text_registration } }
    assert_redirected_to school_bulletin_url(@school_bulletin)
  end

  test "should destroy school_bulletin" do
    assert_difference('SchoolBulletin.count', -1) do
      delete school_bulletin_url(@school_bulletin)
    end

    assert_redirected_to school_bulletins_url
  end
end
