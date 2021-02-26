require "test_helper"

class CapitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capital = capitals(:one)
  end

  test "should get index" do
    get capitals_url, as: :json
    assert_response :success
  end

  test "should create capital" do
    assert_difference('Capital.count') do
      post capitals_url, params: { capital: { abbr: @capital.abbr, capital: @capital.capital, usstate: @capital.usstate } }, as: :json
    end

    assert_response 201
  end

  test "should show capital" do
    get capital_url(@capital), as: :json
    assert_response :success
  end

  test "should update capital" do
    patch capital_url(@capital), params: { capital: { abbr: @capital.abbr, capital: @capital.capital, usstate: @capital.usstate } }, as: :json
    assert_response 200
  end

  test "should destroy capital" do
    assert_difference('Capital.count', -1) do
      delete capital_url(@capital), as: :json
    end

    assert_response 204
  end
end
