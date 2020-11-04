require 'test_helper'

class KakaosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get kakaos_show_url
    assert_response :success
  end

end
