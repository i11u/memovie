require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "viewing the index" do 
    visit articles_path
    assert_selector "h1", text: "My Movies"
  end

  test "jumping from home to home" do
    visit root_path
    click_on "Home"
    assert_selector "p", text: "New Movie"
  end

  test "jumping to the index via home" do
    visit root_path
    click_on "My Movies"
    assert_selector "h1", text: "My Movies"
  end

  test "creating an article" do
    visit articles_path

    click_on "New Article"

    fill_in "Title", with: "Creating an Article"
    fill_in "Theater", with: "ユナイテッドシネマ福岡"
    fill_in "Watched date", with: "2018/07/16 12:00:00 +09:00"
    fill_in "Text", with: "Created this article successfully!"

    click_on "Create Article"

    assert_text "Creating an Article"
  end
end
