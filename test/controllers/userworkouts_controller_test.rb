require "test_helper"

class UserworkoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userworkout = userworkouts(:one)
  end

  test "should get index" do
    get userworkouts_url
    assert_response :success
  end

  test "should get new" do
    get new_userworkout_url
    assert_response :success
  end

  test "should create userworkout" do
    assert_difference("Userworkout.count") do
      post userworkouts_url, params: { userworkout: { User_id: @userworkout.User_id, exercise: @userworkout.exercise } }
    end

    assert_redirected_to userworkout_url(Userworkout.last)
  end

  test "should show userworkout" do
    get userworkout_url(@userworkout)
    assert_response :success
  end

  test "should get edit" do
    get edit_userworkout_url(@userworkout)
    assert_response :success
  end

  test "should update userworkout" do
    patch userworkout_url(@userworkout), params: { userworkout: { User_id: @userworkout.User_id, exercise: @userworkout.exercise } }
    assert_redirected_to userworkout_url(@userworkout)
  end

  test "should destroy userworkout" do
    assert_difference("Userworkout.count", -1) do
      delete userworkout_url(@userworkout)
    end

    assert_redirected_to userworkouts_url
  end
end
