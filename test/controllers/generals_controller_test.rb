require "test_helper"

class GeneralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general = generals(:one)
  end

  test "should get index" do
    get generals_url, as: :json
    assert_response :success
  end

  test "should create general" do
    assert_difference('General.count') do
      post generals_url, params: { general: { abbr: @general.abbr, bird: @general.bird, birdimg: @general.birdimg, flower: @general.flower, flowerimg: @general.flowerimg, largestcity: @general.largestcity, motto: @general.motto, nickname: @general.nickname, order: @general.order, poprank: @general.poprank, population: @general.population, size: @general.size, sizerank: @general.sizerank, tree: @general.tree, treeimg: @general.treeimg, website: @general.website, year: @general.year } }, as: :json
    end

    assert_response 201
  end

  test "should show general" do
    get general_url(@general), as: :json
    assert_response :success
  end

  test "should update general" do
    patch general_url(@general), params: { general: { abbr: @general.abbr, bird: @general.bird, birdimg: @general.birdimg, flower: @general.flower, flowerimg: @general.flowerimg, largestcity: @general.largestcity, motto: @general.motto, nickname: @general.nickname, order: @general.order, poprank: @general.poprank, population: @general.population, size: @general.size, sizerank: @general.sizerank, tree: @general.tree, treeimg: @general.treeimg, website: @general.website, year: @general.year } }, as: :json
    assert_response 200
  end

  test "should destroy general" do
    assert_difference('General.count', -1) do
      delete general_url(@general), as: :json
    end

    assert_response 204
  end
end
