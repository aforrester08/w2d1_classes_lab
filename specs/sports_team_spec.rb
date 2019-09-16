require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team.rb")

class TestSportTeam < MiniTest::Test

def test_get_team_name
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal("patriots", sport_team.team_name())
end

def test_get_player_names
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal(["Brady", "Brown", "Julien"], sport_team.players())
end

def test_get_coach
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal("Bill", sport_team.coach())
end

def test_set_coach
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  sport_team.coach = "Pete"
  assert_equal("Pete", sport_team.coach())
end

def test_add_player
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal(["Brady", "Brown", "Julien", "Welker"], sport_team.add_player("Welker"))
end

def test_check_players__true
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal(true, sport_team.check_players("Brady"))
end

def test_check_players__false
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal(false, sport_team.check_players("Clinton"))
end

def test_points_tally__win
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal(1, sport_team.points_tally("win"))
end

def test_points_tally__lose
  sport_team = SportTeam.new("patriots", ["Brady", "Brown", "Julien"], "Bill", 0)
  assert_equal(0, sport_team.points_tally("lose"))
end

end
