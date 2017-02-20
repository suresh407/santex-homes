require 'test_helper'

class EnergySmartControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get energy_smart_index_url
    assert_response :success
  end

end
