require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit items_url

    assert_selector "h1", text: "Item"
  end

  # test "visiting the show" do
  #   visit item_path(Item)

  #   assert_selector "h1", text:

  # end
end
