require "application_system_test_case"

class SchoolBulletinsTest < ApplicationSystemTestCase
  setup do
    @school_bulletin = school_bulletins(:one)
  end

  test "visiting the index" do
    visit school_bulletins_url
    assert_selector "h1", text: "School Bulletins"
  end

  test "creating a School bulletin" do
    visit school_bulletins_url
    click_on "New School Bulletin"

    fill_in "Adults heading", with: @school_bulletin.adults_heading
    fill_in "Adults reg btn text", with: @school_bulletin.adults_reg_btn_text
    fill_in "Adults reg link", with: @school_bulletin.adults_reg_link
    fill_in "Adults subheading", with: @school_bulletin.adults_subheading
    fill_in "Adults text", with: @school_bulletin.adults_text
    fill_in "Beginners heading", with: @school_bulletin.beginners_heading
    fill_in "Beginners reg btn text", with: @school_bulletin.beginners_reg_btn_text
    fill_in "Beginners reg link", with: @school_bulletin.beginners_reg_link
    fill_in "Beginners subheading", with: @school_bulletin.beginners_subheading
    fill_in "Beginners text", with: @school_bulletin.beginners_text
    fill_in "Bulletin", with: @school_bulletin.bulletin
    fill_in "Classes offered notice", with: @school_bulletin.classes_offered_notice
    fill_in "Classes offered text", with: @school_bulletin.classes_offered_text
    fill_in "Cont student reg btn text", with: @school_bulletin.cont_student_reg_btn_text
    fill_in "Cont student reg link", with: @school_bulletin.cont_student_reg_link
    fill_in "Heading registration", with: @school_bulletin.heading_registration
    fill_in "Image1 link", with: @school_bulletin.image1_link
    fill_in "Image2 link", with: @school_bulletin.image2_link
    fill_in "Image3 link", with: @school_bulletin.image3_link
    fill_in "Image4 link", with: @school_bulletin.image4_link
    fill_in "Image5 link", with: @school_bulletin.image5_link
    fill_in "Image6 link", with: @school_bulletin.image6_link
    fill_in "Image7 link", with: @school_bulletin.image7_link
    fill_in "Image8 link", with: @school_bulletin.image8_link
    fill_in "New student reg btn text", with: @school_bulletin.new_student_reg_btn_text
    fill_in "New student reg link", with: @school_bulletin.new_student_reg_link
    fill_in "Prev classes text", with: @school_bulletin.prev_classes_text
    fill_in "Text registration", with: @school_bulletin.text_registration
    click_on "Create School bulletin"

    assert_text "School bulletin was successfully created"
    click_on "Back"
  end

  test "updating a School bulletin" do
    visit school_bulletins_url
    click_on "Edit", match: :first

    fill_in "Adults heading", with: @school_bulletin.adults_heading
    fill_in "Adults reg btn text", with: @school_bulletin.adults_reg_btn_text
    fill_in "Adults reg link", with: @school_bulletin.adults_reg_link
    fill_in "Adults subheading", with: @school_bulletin.adults_subheading
    fill_in "Adults text", with: @school_bulletin.adults_text
    fill_in "Beginners heading", with: @school_bulletin.beginners_heading
    fill_in "Beginners reg btn text", with: @school_bulletin.beginners_reg_btn_text
    fill_in "Beginners reg link", with: @school_bulletin.beginners_reg_link
    fill_in "Beginners subheading", with: @school_bulletin.beginners_subheading
    fill_in "Beginners text", with: @school_bulletin.beginners_text
    fill_in "Bulletin", with: @school_bulletin.bulletin
    fill_in "Classes offered notice", with: @school_bulletin.classes_offered_notice
    fill_in "Classes offered text", with: @school_bulletin.classes_offered_text
    fill_in "Cont student reg btn text", with: @school_bulletin.cont_student_reg_btn_text
    fill_in "Cont student reg link", with: @school_bulletin.cont_student_reg_link
    fill_in "Heading registration", with: @school_bulletin.heading_registration
    fill_in "Image1 link", with: @school_bulletin.image1_link
    fill_in "Image2 link", with: @school_bulletin.image2_link
    fill_in "Image3 link", with: @school_bulletin.image3_link
    fill_in "Image4 link", with: @school_bulletin.image4_link
    fill_in "Image5 link", with: @school_bulletin.image5_link
    fill_in "Image6 link", with: @school_bulletin.image6_link
    fill_in "Image7 link", with: @school_bulletin.image7_link
    fill_in "Image8 link", with: @school_bulletin.image8_link
    fill_in "New student reg btn text", with: @school_bulletin.new_student_reg_btn_text
    fill_in "New student reg link", with: @school_bulletin.new_student_reg_link
    fill_in "Prev classes text", with: @school_bulletin.prev_classes_text
    fill_in "Text registration", with: @school_bulletin.text_registration
    click_on "Update School bulletin"

    assert_text "School bulletin was successfully updated"
    click_on "Back"
  end

  test "destroying a School bulletin" do
    visit school_bulletins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School bulletin was successfully destroyed"
  end
end
