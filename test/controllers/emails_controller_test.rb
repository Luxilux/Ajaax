require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get inex" do
    get emails_inex_url
    assert_response :success
  end

  test "should get new" do
    get emails_new_url
    assert_response :success
  end

end
