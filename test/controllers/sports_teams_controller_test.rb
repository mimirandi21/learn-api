require "test_helper"

class SportsTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sports_team = sports_teams(:one)
  end

  test "should get index" do
    get sports_teams_url, as: :json
    assert_response :success
  end

  test "should create sports_team" do
    assert_difference('SportsTeam.count') do
      post sports_teams_url, params: { sports_team: { abbr: @sports_team.abbr, homefield: @sports_team.homefield, league: @sports_team.league, logo: @sports_team.logo, teamname: @sports_team.teamname, website: @sports_team.website } }, as: :json
    end

    assert_response 201
  end

  test "should show sports_team" do
    get sports_team_url(@sports_team), as: :json
    assert_response :success
  end

  test "should update sports_team" do
    patch sports_team_url(@sports_team), params: { sports_team: { abbr: @sports_team.abbr, homefield: @sports_team.homefield, league: @sports_team.league, logo: @sports_team.logo, teamname: @sports_team.teamname, website: @sports_team.website } }, as: :json
    assert_response 200
  end

  test "should destroy sports_team" do
    assert_difference('SportsTeam.count', -1) do
      delete sports_team_url(@sports_team), as: :json
    end

    assert_response 204
  end
end
