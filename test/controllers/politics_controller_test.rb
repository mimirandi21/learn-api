require "test_helper"

class PoliticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politic = politics(:one)
  end

  test "should get index" do
    get politics_url, as: :json
    assert_response :success
  end

  test "should create politic" do
    assert_difference('Politic.count') do
      post politics_url, params: { politic: { congressmen: @politic.congressmen, electoral: @politic.electoral, flag: @politic.flag, governor: @politic.governor, senator: @politic.senator } }, as: :json
    end

    assert_response 201
  end

  test "should show politic" do
    get politic_url(@politic), as: :json
    assert_response :success
  end

  test "should update politic" do
    patch politic_url(@politic), params: { politic: { congressmen: @politic.congressmen, electoral: @politic.electoral, flag: @politic.flag, governor: @politic.governor, senator: @politic.senator } }, as: :json
    assert_response 200
  end

  test "should destroy politic" do
    assert_difference('Politic.count', -1) do
      delete politic_url(@politic), as: :json
    end

    assert_response 204
  end
end
