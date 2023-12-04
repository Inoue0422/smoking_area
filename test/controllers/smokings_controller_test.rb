require 'test_helper'

class SmokingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get smokings_index_url
    assert_response :success
  end
end
