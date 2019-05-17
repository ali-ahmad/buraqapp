require 'test_helper'

class NaatlyricsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get naatlyrics_index_url
    assert_response :success
  end

end
