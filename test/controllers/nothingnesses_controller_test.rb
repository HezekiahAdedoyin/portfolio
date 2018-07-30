require 'test_helper'

class NothingnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nothingness = nothingnesses(:one)
  end

  test "should get index" do
    get nothingnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_nothingness_url
    assert_response :success
  end

  test "should create nothingness" do
    assert_difference('Nothingness.count') do
      post nothingnesses_url, params: { nothingness: { make: @nothingness.make, model: @nothingness.model, year: @nothingness.year } }
    end

    assert_redirected_to nothingness_url(Nothingness.last)
  end

  test "should show nothingness" do
    get nothingness_url(@nothingness)
    assert_response :success
  end

  test "should get edit" do
    get edit_nothingness_url(@nothingness)
    assert_response :success
  end

  test "should update nothingness" do
    patch nothingness_url(@nothingness), params: { nothingness: { make: @nothingness.make, model: @nothingness.model, year: @nothingness.year } }
    assert_redirected_to nothingness_url(@nothingness)
  end

  test "should destroy nothingness" do
    assert_difference('Nothingness.count', -1) do
      delete nothingness_url(@nothingness)
    end

    assert_redirected_to nothingnesses_url
  end
end
