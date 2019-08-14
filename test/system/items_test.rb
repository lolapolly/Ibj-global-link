require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit items_url

    assert_selector "h1", text: "Our products"
  end

  # test "visiting the show" do
  #   visit item_path(Item)

  #   assert_selector "h1", text:

  # end
  test "prevent user to create an item without a name" do
    login_as users(:lola)
    visit "items/new"

    item_count_before = Item.count
    fill_in "Description", with: "super smooth"
    click_on "Submit"


    assert_equal "/items", page.current_path
    assert_equal item_count_before, Item.count
  end

  test "Admin able to upload an item with a photo" do
    login_as users(:lola)
    visit "items/new"

    item_count_before = Item.count
    fill_in "Name", with: "Mosaico dolce"
    fill_in "Description", with: "very good"
    fill_in "Price", with: "5"
    # fill_in "Photo", with: "mosaic.jpg"
    click_on "Category", with: "Mosaic"
    click_on "Submit"
    assert_equal "/items", page.current_path
    assert_equal item_count_before, Item.count + 1
  end

end
