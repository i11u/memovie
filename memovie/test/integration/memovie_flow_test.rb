require 'test_helper'

class MemovieFlowTest < ActionDispatch::IntegrationTest
  test "can create an article" do
    get "/articles/new"
    assert_response :success

    post "/articles", params: { article: { title: "can create", body: "article successfully.", watched_date: "2018/07/16 12:00:00 +09:00", rate: 4 } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Title:\n            can create"
  end
end
