class SportTeam

  attr_accessor(:team_name, :players, :coach, :points)

 def initialize(input_team_name, input_players, input_coach, input_points)
  @team_name = input_team_name
  @players = input_players
  @coach = input_coach
  @points = input_points
 end

 def add_player(new_player)
   @players << new_player
 end

 def check_players(player_to_check)
   for player in @players
    return true if player_to_check == player
    return false if player_to_check != player
   end
 end

 def points_tally(result_of_game)
   if result_of_game == "win"
    return @points += 1
   else
    return @points
   end
 end

end
